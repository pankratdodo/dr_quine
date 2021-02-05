# dr_quine
A quine is a computer program (a kind of metaprogram) whose output and source
code are identical. As a challenge or for fun, some programmers try to write the shortest
quine in a given programming language.
## Installation and run
1. Download/Clone this repo
```
git clone https://github.com/pankratdodo/dr_quine.git
```
2. `cd` into directrory and run `make`
```
cd dr_quine/C && make
```
3. Run scripts to check program
```
sh run_Colleen.sh && sh run_Grace.sh && sh run_Sully.sh
```
Fisrt and second scripts shouldn't output anything. The last one must to output the difference between five genereted files.

Do the same for ASM/ and python/ directories.

## Main project instructions
### General Instructions
- You must use C/ASM and submit a Makefile.
- Your Makefile must compile the project and must contain the usual rules. It must recompile and re-link the program only if necessary.
- You have to handle errors carefully

### Mandatory part
For this project, you will have to recode three different programs, each with different properties. Each programs will have to be coded in C and in Assembly, and respectivly in a folder named C and ASM, each folders containing its own Makefile with the usual rules.

#### For the first program the source code must contain at least :
- A main function.
- Two different comments.
- One of the comments must be present in the main function
- One of the comments must be present outside of your program.
- Another function in addition to the main function (which of course will be called)

When executed, the program must display on the standard output an output identical to the source code of the file used to compile the program.

#### For the second program:
The source code must strickly contain
- No main declared.
- Three defines only.
- One comment.

When executed, the program writes in a file named Grace_kid.c/Grace_kid.s the source code of the file used to compile the program.

The program will run by calling a macro.
#### For the last program:
- When executed the program writes in a file named Sully_X.c/Sully_X.s. The X will be an interger given in the source. Once the file is created, the program compiles this file and then runs the new program (which will have the name of its source file).
- Stopping the program depends on the file name : the resulting program will be executed only if the integer X is greater than 0.
- An integer is therefore present in the source of your program and will have to evolve by decrementing every time you create a source file from the execution of the program.
- You have no constraints on the source code, apart from the integer that will be set to 5 at first.

### Bonus part
The only Bonus accepted during p2p is to have redone this project entirely in the language of your choice.(python)
