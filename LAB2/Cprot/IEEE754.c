#include "IEEE754.h"


uint32_t convFloatinIEEE754(float val)
{
	union IEEE754conv conv;
	conv.f = val;
	return conv.ieee754Value;
}