#include <stdio.h>

int main() {
    char name[64] = {0};
    read(0, name, 63);
    printf("Hello %s", name);
    return 0;
}
