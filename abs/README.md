# Absolute Value Extension

This project introduces a first custom RISC-V instruction within my portfolio of RISC-V extensions; ABS (absolute value), designed as a lightweight extension to validate a RISC-V development workflow.

The extension is implemented as a set of patches for the RISC-V toolchain and simulator, along with assembly and C++ tests. The goal is to provide a minimal, reproducible extension that demonstrates the full path from instruction design → toolchain integration → simulator execution → test programs.

## Features

- New instruction: abs rd, rs1, rs2
- Calculates absolute value of the contents of rs1.
- Absolute value is not part of the base RISC-V ISA, making this an instructive custom addition.

## Testing

Below are commands to use in Bash in order to build, compile, and run tests for bare-metal assembly and C++ implementations of the abs instruction.

### Assembly Test

```bash
cd <your-dir-path>/RISCV/riscv-extensions/tests/asm
riscv64-unknown-elf-as abs_test.S -o abs_test.o
riscv64-unknown-elf-ld abs_test.o -o abs_test.elf
spike pk abs_test.elf
echo $?
```

Output should result in '45', as a result of the absolute value of -45.

### C Test

```bash
cd <your-dir-path>/RISCV/riscv-extensions/tests/c
riscv64-unknown-elf-gcc abs_c_test.c -o abs_c_test.elf
spike pk abs_c_test.elf
```

Output should result in 'Absolute value of -45: 45'.

### C++ Test

```bash
cd <your-dir-path>/RISCV/riscv-extensions/tests/cpp
riscv64-unknown-elf-g++ abs_cpp_test.cpp -o abs_cpp_test.elf
spike pk abs_cpp_test.elf
```

Output should result in 'Absolute value of -45: 45'.
