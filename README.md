# LibftASM

LibftASM is a 42 school project. The objective is to learn Assembly by writting a small function library. The generated library is `libfts.a`. You can find the list of the implemented functions in the header file `libfts.h`.

---

### Compilation

In order to compile this library, you need a MacOS system, the nasm compiler & the Make software. All you need to do is to use the command `make` in the root folder of the project. By default, the Makefile is set up to compile the assembly code for **macho64** architecture.

### How to use `Libfts.a` ?

You simply need to link the library during the compilation of your program (for example, with the Clang Compiler, you may add `-lfts` to link the library during compilation). While coding, you can `#include` the header file `libfts.h` in order to add the functions' prototype.
