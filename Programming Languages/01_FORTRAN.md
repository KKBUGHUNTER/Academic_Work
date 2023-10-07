To save and run a FORTRAN program on a Linux system, follow these steps:

1. **Open a Text Editor**: You can use any text editor you prefer. Common text editors in Linux include `nano`, `vim`, `gedit`, and `emacs`. For example, to open a new file using `nano`, you can run:

   ```bash
   nano hello.f90
   ```

2. **Write the FORTRAN Code**: Paste the FORTRAN code I provided in the previous response into the text editor:

   ```fortran
   program hello
      ! This is a Hello, World! program in FORTRAN.
      write(*,*) 'Hello, World!'
   end program hello
   ```

3. **Save the File**: In `nano`, you can save the file by pressing `Ctrl` + `O`, then confirming the filename (in this case, `hello.f90`). Press `Enter` to save the file, and then press `Ctrl` + `X` to exit `nano`.

4. **Compile the FORTRAN Program**: To compile the FORTRAN program, you'll need a FORTRAN compiler like `gfortran`. If you don't have it installed, you can install it using your package manager. For example, on Ubuntu or Debian, you can install it with:

   ```bash
   sudo apt-get install gfortran
   ```

   Once you have `gfortran` installed, you can compile your program with:

   ```bash
   gfortran -o hello hello.f90
   ```

   This will generate an executable file named `hello`.

5. **Run the Program**: You can run the compiled program with:

   ```bash
   ./hello
   ```

   You should see the "Hello, World!" message printed to the terminal.

That's it! You've created, compiled, and run a simple FORTRAN program on a Linux system.
