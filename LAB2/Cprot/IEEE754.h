/*includes section*/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
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
union IEEE754conv 
{
	float f;
	uint32_t ieee754Value;
};
uint32_t convFloatinIEEE754(float val);
