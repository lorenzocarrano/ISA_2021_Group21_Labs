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
void Float2IEEE754Conversion(float Value, char *EncodingSTR);
