#include <stdio.h>

int main() {
    int a = 5, b = 10, c = 0, d = 2, e, f, g;
    
    for (int i = 0; i < a; i++) {
        if (i % d == 0) {
            b += i;
        } else {
            c -= i;
        }
    }
    
    e = b + c;
    f = a + b + c;
    g = b - c + d;
    
    if (g > 0) {
        e += g;
    } else {
        f -= g;
    }
    
    if (e > f) {
        printf("%d\n", e);
    } else {
        printf("%d\n", f);
    }
    
    return 0;
}
