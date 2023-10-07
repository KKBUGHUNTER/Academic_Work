
**COBOL:**

1. **Open a Text Editor**: Use a text editor of your choice, such as `nano`, `vim`, `gedit`, or `emacs`. For example, to open a new file using `nano`, run:

   ```bash
   nano hello.cob
   ```

2. **Write the COBOL Code**: Paste the following COBOL code into the text editor:

   ```cobol
   IDENTIFICATION DIVISION.
   PROGRAM-ID. HelloWorld.
   PROCEDURE DIVISION.
       DISPLAY 'Hello, World!'.
       STOP RUN.
   ```

3. **Save the File**: In `nano`, save the file by pressing `Ctrl` + `O`, confirm the filename (e.g., `hello.cob`), and then press `Enter`. Exit `nano` with `Ctrl` + `X`.

4. **Compile COBOL**: Most Linux distributions come with a COBOL compiler called `cobc` (GNU COBOL). You can compile your program with:

   ```bash
   cobc -x -o hello hello.cob
   ```

   This will generate an executable file named `hello`.

5. **Run the Program**: Execute the compiled COBOL program with:

   ```bash
   ./hello
   ```

   You should see the "Hello, World!" message displayed in the terminal.

That's it! You've created, compiled, and run simple "Hello, World!" programs in ALGOL and COBOL on a Linux system.
