#include<assert.h>

int rand(){
    int x;
    return x%2;
}

int main() {
    int i, n, a, b;
    i = 0; a = 0; b = 0; n = 500;

    while (i < n) {
        if (rand()) {
            a = a + 1;
            b = b + 2;
        } else {
            a = a + 2;
            b = b + 1;
        }
        i = i + 1;
    }
    //@ assert(a + b == 3*n);
    return 0;
}

