#include "gcd.h"

TARGET_TYPE modulo(TARGET_TYPE x, TARGET_TYPE y) {

    TARGET_TYPE result = x;

    MODULOWHILE:
    while (result >= y)
        result -= y;

    return result;
}

TARGET_TYPE gcd(TARGET_TYPE m, TARGET_TYPE n) {

    TARGET_TYPE r = 0;

    if(m == 0 && n == 0)
        return -1;

    if(m < 0)
        m = -m;
    if(n < 0)
        n = -n;

    GCDWHILE:
    while(n) {
        r = modulo(m,n);
        m = n;
        n = r;
    }

    return m;
}
