**ALGOL:**

1. **Open a Text Editor**: Use a text editor like `nano`, `vim`, `gedit`, or `emacs`. For example, to open a new file using `nano`, you can run:

   ```bash
   nano hello.alg
   ```

2. **Write the ALGOL Code**: Paste the following ALGOL code into the text editor:

   ```algol
   BEGIN
      writeln('Hello, World!');
   END.
   ```

3. **Save the File**: In `nano`, save the file by pressing `Ctrl` + `O`, confirm the filename (e.g., `hello.alg`), and then press `Enter`. Exit `nano` with `Ctrl` + `X`.

4. **Compile ALGOL**: ALGOL typically requires a specific compiler, such as `algol68g`. You may need to install it using your package manager or obtain it from other sources. Once you have it installed, you can compile your program with:

   ```bash
   algol68g -o hello hello.alg
   ```

   This will generate an executable file named `hello`.

5. **Run the Program**: Execute the compiled program with:

   ```bash
   ./hello
   ```

   You should see the "Hello, World!" message printed to the terminal.
