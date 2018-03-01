#include "gcd.h"
#include <stdio.h>

TARGET_TYPE modulo_sw(TARGET_TYPE x, TARGET_TYPE y) {

    TARGET_TYPE result = x;

    MODULOWHILE:
    while (result >= y)
        result -= y;

    return result;
}


int main() {

	TARGET_TYPE sw_res;
	TARGET_TYPE hw_res;

	TARGET_TYPE m = 10;
	TARGET_TYPE n = 6;

    TARGET_TYPE r = 0;

    if(m == 0 && n == 0)
        return -1;

    if(m < 0)
        m = -m;
    if(n < 0)
        n = -n;

    GCDWHILE:
    while(n) {
        r = modulo_sw(m,n);
        m = n;
        n = r;
    }

    sw_res = m;
    printf("%.1f", sw_res);
    hw_res = gcd(m,n);

    if(sw_res != hw_res)
    	return 1;

    return 0;

}
