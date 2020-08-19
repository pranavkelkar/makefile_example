#include <stdio.h>
#include "functions.h"

int main(int argc, char** argv, char **envp){
    print_hello();
    printf("factorial: %d\n", factorial(3));
    return 0;
}
