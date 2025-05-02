<div align="center">

  ![ft_printfe](https://github.com/user-attachments/assets/90a517ec-deb4-447d-ae18-f39157b4c1b1)
</div>


# ft_printf

`ft_printf` is a custom implementation of the standard C library's `printf` function. The purpose of this project is to demonstrate the ability to handle variadic functions, formatting, and different data types for output. It behaves similarly to the original `printf` but with your own custom implementation.

## 📝 Overview

This project involves the creation of a `printf` function that mimics the behavior of the standard C library's `printf`, but is fully implemented from scratch. It supports the majority of the common format specifiers such as `%d`, `%i`, `%u` `%s`, `%c`, `%x`, `%X`, `%p` and `%%`. The goal is to understand variadic functions and gain deeper experience with C string handling.

<div align="center">
  
| Grade                                                             | Evaluation Information           |
| :---------------------------------------------------------------- | :------------------------------- |
| <img src="https://img.shields.io/badge/100%20%2F%20100%20%E2%98%85-sucess"/>  | `3 peers` `30 mins` `moulinette` |
</div>

## ✨ Features

- Handles various format specifiers, including:
  - `%d` or `%i` for integers
  - `%s` for strings
  - `%c` for characters
  - `%x` or `%X` for hexadecimal numbers
  - `%u` for unsigned integers
  - `%p` for pointer addresses
  - **`%%`** to print a literal `%` character.
- Flexible and customizable implementation that simulates the standard `printf` function's behavior.

## 🚀 Getting Started

### Prerequisites

- GCC or any C-compatible compiler
- `make`

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ft_printf.git
   cd ft_printf
2. Compile the project:

        make
Testing the Function
To test ft_printf, create a C file that includes ft_printf.h, call the function, and print various formatted outputs.

Example main.c:

```c
#include "ft_printf.h"

int main() {
    int a = 42;
    char c = 'A';
    char *str = "Hello, World!";
    
    ft_printf("Integer: %d\n", a);
    ft_printf("Character: %c\n", c);
    ft_printf("String: %s\n", str);
    return 0;
}
```
Example Output
Given the following code:

```c
ft_printf("Integer: %d\n", 42);
ft_printf("Character: %c\n", 'A');
ft_printf("String: %s\n", "Hello, World!");
```
The expected output would be:

```
Integer: 42
Character: A
String: Hello, World!
```
