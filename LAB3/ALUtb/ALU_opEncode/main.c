#include <stdio.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#define fNameLength 50

union Operand
{
	float f;
	uint32_t hex;
};
union Operation
{
	char c;
	uint32_t hex;
};
void decodeExpression(union Operation *op)
{	
	switch(op->c)
	{
		case '+':	
			op->hex = 0x04;
		break;
		case '-':
			op->hex = 0x05;
		break;
		case '&':
			op->hex = 0x09;
		break;
		case '|':
			op->hex = 0x0A;
		break;
		case '^':
			op->hex = 0x0B;
		break;
		case '?':
			op->hex = 0x0C;
		break;
		case '<':
			op->hex = 0x00;
		break;
		case '>':
			op->hex = 0x01;
		break;
		/*  at the moment unused: arithmetical shift right
		case 'r':
			op->hex = 0x0B;
		break;
		*/

		default: 
			op->hex = 0xFF;
		break;	
	}	
}
int main(int argc, char* argv[])
{
	FILE *fp;
	FILE *fpOut = fopen("./../files/ALUops.hex",  "w");
	char fileName[fNameLength];
	int i = 0; //line counter
	union Operand A, B;	
	union Operation op;
	if(1 == argc)
		strcpy(fileName, "./../files/ALU_Operations.txt");
	else if(2 == argc)
		strcpy(fileName, argv[1]);
	else 
	{
		printf("wrong arguments.\n");
		return -1;
	}
	//printf("trying open file %s\n", fileName);
	fp = fopen(fileName, "r");
	if(NULL == fp)
	{
		printf("error opening the file.\n");
		return -1;
	}
	
	while(EOF !=  fscanf(fp, "%f %c %f"), &A.f, &op.c, &B.f)
	{
		decodeExpression(&op);
		if(0xFF == op.hex)
		{
			printf("unrecognized operation at line %d\n", i+1);
			continue; //ignoring that line --> will be not be present in the .hex file for the vhdl simulation test
		}
		fprintf(fpOut, "%x%x%x\n", A.hex, B.hex, op.hex);		
		i++;
	}
	
	fclose(fp);
	fclose(fpOut);	

	return 0;
}
