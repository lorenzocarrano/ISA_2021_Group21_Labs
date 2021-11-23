/*includes section*/
#include <stdio.h>
#include <stdlib.h>
/*end of includes section*/

/*define section*/
#define SIZE 32
#define mantixSIZE 23
#define exponentSIZE 8
#define SINGLE_PRECISION_OFFSET 127
/*end of define section*/

/*since we are working on 32-bit values we use float variables
 *Use of double variables gives us an higher precision, but then we 
 *will work o 64-bit, that is not what we want to do
 					 __________________________________ 
					|   |31|      |30  23|   |22   0|  |
					|  	sign	  exponent	  mantix   |
					|__________________________________| 
 */

void separate_integer_and_decimal_parts(float v, int *intPart, float *decPart);
void convIntegPart2Bin(int IntP, char *convertedValue);
void convDegPart2Bin(float DegP, char *convertedValue);
void mountintegPartEncWithDegPartEncod(char *integ, char*deg, char*intermed);
void evaluatepow2exp(char* intermed, int *xExp, int IntegPartValue);
void convExp2bin(int realExp, char *convertedValue);
void MantixEncoding(char* intermediateSTR, int xExp, char*mantixSTR);
void IEEE754Encoder(float initial_value, char*mantixSTR, char* ExpSTR, char* finalSTR);
int main(int argc, char* argv[]){
	/*declaring variables*/
	float testValue = 85.125;
	int integ;
	float deg;
	char intPartencodSTR[mantixSIZE+1];
	char degPartencod[exponentSIZE+1];
	char intermediateSTR[mantixSIZE+exponentSIZE+2]; //+1 as always for '\0' char, +1 again for the '.' char
	int xExp;
	int realExp; //will be xExp +SINGLE_PRECISION_OFFSET (i.e. xExp + 127)
	char realExpEncod[exponentSIZE+1];
	char mantixSTR[mantixSIZE+1];
	char IEEE754Encoding[SIZE+1];
	/*end declaring variables*/
	
	//separating integer and decimal parts
	separate_integer_and_decimal_parts(testValue, &integ, &deg);
	printf("int: %d\tdec: %f\n", integ, deg);
	//encoding integer part into bin
	convIntegPart2Bin(integ, intPartencodSTR);
	printf("integer bin encoding: %s\n", intPartencodSTR);
	//encoding decimal part into bin
	convDegPart2Bin(deg, degPartencod);
	printf("decimal bin encoding: %s\n", degPartencod);
	//mounting the two encodings together
	mountintegPartEncWithDegPartEncod(intPartencodSTR, degPartencod, intermediateSTR);
	printf("intermediate string: %s\n", intermediateSTR);
	//evaluating exponent x of 2^x expression
	evaluatepow2exp(intermediateSTR, &xExp, integ);
	printf("x: %d\n", xExp);
	//evaluating real exponent and converting it into an 8 bit number
	realExp = xExp+SINGLE_PRECISION_OFFSET;
	//now I have to convert realExp in binary similarly to what I did with the integer part
	convExp2bin(realExp, realExpEncod);
	printf("Exponent Encoding: %s\n", realExpEncod);
	/*at this point I know that the mantissa is equal to the xExp bits before the '.' char and 
	  the other bits after '.' char, then filled with all 0s
	*/
	printf("intermed STRING: %s\n", intermediateSTR);
	MantixEncoding(intermediateSTR, xExp, mantixSTR);
	printf("MANTIX: %s\n", mantixSTR);
	//final encoding
	IEEE754Encoder(testValue, mantixSTR, realExpEncod,IEEE754Encoding);
	printf("Final Encoding: %s\n", IEEE754Encoding);
	return 0;
}
/*@brief: takes a floating point number and separately returns the integer and decimal parts*/
void separate_integer_and_decimal_parts(float v, int *intPart, float *decPart){
	*intPart = v;
	*decPart = v - *intPart;	
}
/*@brief: takes the integer part of a number and returns its binary encoding*/
void convIntegPart2Bin(int IntP, char *convertedValue){
	
	int i = 0, reminder;
	for(i; i <= mantixSIZE; i++){
		reminder = IntP%2;
		*(convertedValue + mantixSIZE-i-1) = 0 == reminder ? '0' : '1';
		IntP = IntP>>1;
	}
}
/*@brief: takes the decimal part of a number and returns its binary encoding*/
void convDegPart2Bin(float DegP, char *convertedValue){
	int i = 0;
	printf("degP: %f\n", DegP);
	
	for(i; i < exponentSIZE; i++){
		printf("i: %d, DegP: %f\n", i, DegP);
		DegP *= 2; //on float variables we can't use << or >> shift operators
		*(convertedValue + i) = 0 == (int)DegP ? '0' : '1';
		DegP -= (int)DegP; //when DegP reaches 1.0 it returns to 0.0 and ends with all 0s in the encoding
	}
}
/*@brief: takes integ part and deg part encodings and places them in a single string like: xxxx.yyyy*/
void mountintegPartEncWithDegPartEncod(char *integ, char*deg, char*intermed){
	int i;
	for(i = 0; i < mantixSIZE; i++){
		*intermed++ = *integ++;
	}
	*intermed++ = '.';
	for(i = 0; i < exponentSIZE; i++){
		*intermed++ = *deg++;
	}
	*intermed = '\0';

}
/*@brief: evaluates x number of 2^x expression counting how many digits are between the (MSB-1)bit and the '.' char*/
void evaluatepow2exp(char* intermed, int *xExp, int IntegPartValue){

	/*we have to ignore the 0s before the strictly necessary bits to encode the integer part value.
	To do it, I first evaluate the strictly necessary bits to encode the integer part value:
		____________010011xxxxx.yyyyy      _________ are the not strictly necessary bits.
	Thus I have to start the count just ignoring the first mantixSIZE-strictly_necessary_bits position.
	Then, I have ignoring the eventually '0' first position cell, since it would be not significative
	*/
	int EvaluateStrictlyNecessaryBits(int IntegPartValue){
		int cmp = 1; //cmp is used to compare IntegPartValue. It is initialized to 2^0 (i.e. 1)
		int strictlyncessarybits = 1;
		printf("integ part: %d\n", IntegPartValue);
		while(cmp < IntegPartValue){
			 cmp = cmp<<1;
			 printf("new cmp val: %d\n", cmp);
			 strictlyncessarybits++;
		}
		return strictlyncessarybits;
	}
	
	int strictlynecbits = EvaluateStrictlyNecessaryBits(IntegPartValue);
	intermed += mantixSIZE - (strictlynecbits+1);
	int i;
	int cnt = 0;
	int finished = 0;
	int first1index; //stores the position of the first '1'
	if('0' == *intermed){
		i = 1;
		first1index = 1;
	}
	else {
		i = 0;
		first1index = 0;
	} 
	printf("strictlynec: %d\n", strictlynecbits);	
	printf("first i: %d\n",i);
	printf("string: %s\n", intermed);
	while(0 == finished){
		if( '.' != *(intermed+i)){
			cnt++;
			
		}
		else
			finished = 1;
		i++;
	}
	printf("cnt: %d\tfirst1index:%d\n\n",cnt,first1index);
	*xExp = cnt - (first1index +1);
}
/*@brief: simalr to convIntegPart2Bin, but uses exponentSIZE instead of mantixSIZE*/
void convExp2bin(int realExp, char *convertedValue){
	int i = 0, reminder;
	for(i; i <= exponentSIZE; i++){
		reminder = realExp%2;
		*(convertedValue + exponentSIZE-i-1) = 0 == reminder ? '0' : '1';
		realExp = realExp>>1;
	}

}
/*@brief: write the final mantissa Encoding*/
void MantixEncoding(char* intermediateSTR, int xExp, char*mantixSTR){
	/*by construction, I know that the '.' char is the 24th character of intermediate string,
	  i.e. the one with index 23*/
	int dotIndex = 23;
	int i;
	int cnt = 0; //iteration counter
	for(i = 0; i < xExp; i++){
		*mantixSTR++ = *(intermediateSTR+dotIndex-xExp+i);
		cnt++;
	}
	intermediateSTR += dotIndex+1; //I position the pointer to the first character after '.'
	while('\0' != *intermediateSTR){
		*mantixSTR++ = *intermediateSTR++;
		cnt++;
	}
	printf("cnt interm value: %d\n", cnt);
	for(cnt; cnt < mantixSIZE; cnt++) //fills the mantix with all 0s on LSBits
		*mantixSTR++ = '0';
	printf("cnt final value: %d\n", cnt);
}
/*@Brief: encodes the value on IEEE754 encoding rule*/
void IEEE754Encoder(float initial_value, char*mantixSTR, char* ExpSTR, char* finalSTR){
	int i;
	*finalSTR++ = initial_value >= 0 ? '0' : '1'; //sign bit
	for(i = 0; i < exponentSIZE; i++){
		*finalSTR++ = *ExpSTR++;
	}
	for(i = 0; i < mantixSIZE; i++){
		*finalSTR++ = *mantixSTR++;
	}
	*finalSTR = '\0';
}