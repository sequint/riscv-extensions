# RISC-V Extensions

A portfolio of RISC-V extensions, custom instruction sets for domain specific acceleration and applications.  The extensions are first built in the riscv toolchain and simulator then reverse engineered as patch files for  portability between systems.

## Tools

- [RISCV GNU Toolchain](https://github.com/riscv-collab/riscv-gnu-toolchain)
- [RISCV ISA Simulator - Spike](https://github.com/riscv-software-src/riscv-isa-sim)
- [RISCV PK](https://github.com/riscv-software-src/riscv-pk)

## Installation

Because of the custom nature of RISC-V extensions, installation may look different between different systems.
Below is an example of the directory structure I use for my RISC-V extension development.

1. Create a parent directory called 'RISCV'
2. Create a sub directory called 'riscv-dev' (this holds tools cross compilation files from make)
3. Clone the tools listed above into the RISCV directory
    - For the toolchain, spike, and pk use riscv-dev as the '--prefix' path
4. Clone this extension repository into RISCV
5. Traverse into the extension to be added and run the apply_patches.sh script in its patches directory