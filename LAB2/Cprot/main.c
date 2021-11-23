#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//#include <system.h>
#include "IEEE754.h"
enum testModes {TEST_INIT_MODE, TEST_VALIDATION_MODE, UNEXPECTED};
int main(int argc, char* argv[]){

    /*variables declaration*/
    enum testModes mode;
    FILE *fpin, *fpout1, *fpout2;
    FILE *testResponse;
    char testRESULT[1035];
    long testRESULT_strlength;
    char files_differ_or_identical[10];
    float readValue;
    char IEEE754EncodingSTR[SIZE+1];
    int i;
    /*******************************************/

    if(argc == 1)   //program name only
        mode = TEST_INIT_MODE;
    else if(argc == 2){
        if(argv[1][1] == 'i')
            mode = TEST_INIT_MODE;
        else if(argv[1][1] == 'v')
            mode = TEST_VALIDATION_MODE;
        else 
            mode = UNEXPECTED;
    }
    else mode = UNEXPECTED;

    switch(mode){

        case TEST_INIT_MODE:
            fpin = fopen("handwrittensamples.txt", "r");
            //fpin = fopen("testSamples.txt", "r");
            fpout1 = fopen("./simulation_inputs.txt", "w");
            fpout2 = fopen("./expected_outputs.txt", "w");
            if(NULL == fpin){
            printf("samples file not found\n");
            }
            printf("generating std_logic_vector samples and expected output result\n");
            while(EOF != fscanf(fpin, "%f", &readValue)){
                printf("read value: %f\n", readValue);
                printf("input vector generation\n");
                Float2IEEE754Conversion(readValue, IEEE754EncodingSTR);
                printf("converted\n");
                fprintf(fpout1, "%s\n", IEEE754EncodingSTR);
                printf("wrote into file.\n");
                readValue = readValue*readValue;
                printf("corresponding expected output generation\n");
                Float2IEEE754Conversion(readValue, IEEE754EncodingSTR);
                printf("converted\n");
                fprintf(fpout2, "%s\n", IEEE754EncodingSTR);
                printf("wrote into file.\n");
            }
            printf("done.\n");
            fclose(fpin);
            fclose(fpout1);
            fclose(fpout2);
            break;
        
        case TEST_VALIDATION_MODE:
            /* invoke system() to call a diff between the two output files, 
               the C-generated one and the VHDL-generated one. */
               
               //system("diff ./expected_outputs.txt ./../...addpath...");
            //system("diff -qsZB expected_outputs.txt test_results.txt");
            testResponse = popen("diff -qsZB expected_outputs.txt test_results.txt", "r");
            if(testResponse == NULL){
                printf("Failed to run diff command");
                return -1;
            }
            /*
            while (fgets(testRESULT, sizeof(testRESULT), testResponse) != NULL){
                testRESULT_strlength = strlen(testRESULT);
                printf("%s", testRESULT);
                strcpy(files_differ_or_identical, (testRESULT+testRESULT_strlength-10));

            }*/
            //no while cycle needed because in with these arguments I already know that diff returns a single line string.
            fgets(testRESULT, sizeof(testRESULT), testResponse);
            testRESULT_strlength = strlen(testRESULT);
            printf("%s", testRESULT);
            strcpy(files_differ_or_identical, (testRESULT+testRESULT_strlength-10));
            
            if(strncmp((testRESULT+testRESULT_strlength-7), "differ", 6) == 0){
                printf("Test Failed.\n");
            }
            else if(strncmp((testRESULT+testRESULT_strlength-10), "identical", 9) == 0){
                printf("Test Success.\n");
            }
            else {
                printf("Problem with diff return string\n");
                printf("%s", files_differ_or_identical);
                return -1;
            }

            pclose(testResponse);
            break;
        default:    //i.e. wrong parameters from command line
            printf("Error: wrong arguments\n");
            break;
   }
    
    
    return 0;
}
