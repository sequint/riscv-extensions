#include <stdio.h>

int main(void) {
    int neg = -45;              // Value to be converted to absolute value
    int out;

    asm ("abs %0, %1, %2"       // Instruction with placeholder reg values
         : "=r"(out)            // Output operand reg to hold calculated abs value
         : "r"(neg), "r"(0));   // Input operands (%1, %2) - neg number and constant zero
    
    printf("Absolute value of %d: %d\n", neg, out);

    return 0;
}
