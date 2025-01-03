# Basics of command line programming
## Programs, scripts, and functions
- We typically think of our code in terms of programs, scripts, and functions, though the definition of these terms can seem murky when first starting
- A program is typically a set of code that is executable by your system, and is not usually edited by the end user, often made up of smaller scripts and functions, think of something like your web browser or Microsoft Office
- A script is typically a file that is executable and editable by the end user
    - This can range from something as simple as the 'hello, world' script below, to complicated analysis pipelines:
    ```shell
    #!/bin/bash
    echo "Hello, world!"
    ```
- Functions, also often called commands, is a type of code that takes input from the end user, runs some set of commands, and returns a result of some sort
    - These functions can either be installed on your machine (such as `mkdir`, `ls`, or the functions in FSL) or created by the user to be used in further scripts

## The terminal window
- The terminal window is the program that will display the command line and where we will work during much of our programming
- Most programming that starts in the command line is based on the bash, also known as shell, programming language
- These files have the suffix `.sh` and can be run from the command line by using either `./myScript.sh` or `shell myScript.sh`
- All shell scripts should start with the `#!/bin/bash` shebang 
- Most shell scripts are fairly simple, but can become more complicated (and more useful) as we start to incorporate more scripts and programs with advanced features
- These scripts can access any functions available in your `PATH`
    - The `PATH` on a unix machine is a variable where all of your binary directories are referenced after installation
    - To check the current contents of the `PATH` on your machine, type the command `echo $PATH`
## Integrated Development Environments (IDE)
- An IDE is a text editor program with dedicated functions for running and debugging various programming languages
- Shell scripts can be written using anything that can write a text file, i.e. Text Editor, Visual Studio Code/Codium, or Vim in the command line
- Using an IDE makes it easier for writing scripts and programs, since you no longer have to only run things line by line in the command line
- In addition to IDEs, it's occasionally helpful to be able to edit scripts and other files within the command line, and to do that you can use a command line text editor like Vim or nano
# Starting in the command line
- On a linux machine you can open a new command line window either by opening `Terminal` on your computer or pressing `ctrl+alt+t`
- Once open, you should see a window that looks like this:
```shell
hawkid@workstation:~$
```
- Where `hawkid` is the user you are logged in as, `workstation` is the hostname for the machine you are working on, and the `~` indicates that you are currently in your home directory 
- In order to begin working on a new script, we will first make a directory `mkdir`, change into that directory `cd`, and create an empty file `touch`
```shell
mkdir -p projects/mouseNeuroimagingTraining
cd projects/mouseNeuroimagingTraining
touch createBidsFolders.sh
```
- In the command line, it should look something like this, where you can see the current directory gets updated after using the `cd` command
```shell
hawkid@workstation:~$ mkdir -p projects/mouseNeuroimagingTraining
hawkid@workstation:~$ cd projects/mouseNeuroimagingTraining
hawkid@workstation:~/projects/mouseNeuroimagingTraining$ touch createBidsFolders.sh
```
- Note the `-p` in the `mkdir` command. This is called an option, and is commonly used by commands to allow the user to provide certain information or to indicate certain options, in this case to create any intermediate directories if they don't yet exist
- With the `createBidsFolders.sh` file created, we can open it and begin to add the necessary information for creating a script that will create the first folders of our BIDS formatted experiment (for further details, [read bidsBasics.md](/bidsBasics.md))
# Installing dependencies
We'll install some of the dependencies for neuroimaging as a means of practicing using the command line.
## Installing FSL
- As a way of practicing using the command line, we will install FSL using a premade python script which can be downloaded from the following link:
[FSL downloads page](https://fsl.fmrib.ox.ac.uk/fsldownloads_registration)
- After downloading, there should be a file called `fslinstaller.py` inside your `Downloads` folder
- Change to this directory using the `cd` command and run the installer by calling `python` to run the `.py` file
```
cd Downloads
python fslinstaller.py
```
- Once installation completes, try running the following command to check that the installation worked properly:
```
echo $FSLDIR
```
- This should return something like:
```
/usr/local/fsl
```
## Installing AFNI
https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/index.html
## Installing ANTs

## Virtual Machines
- Since most of the work we will be doing is built around Unix operating systems, it is best to work on a Linux or Mac based machine
- In order to perform many of the tasks on a Windows machine, we will have to set up a virtual machine
- A virtual machine is a digital mirror of an operating system (in this case, Linux) that can be accessed via a remote terminal
- The following page has information about various ways to access remote functionalities:
[UIowa CLAS Remote Session Info](https://clas.uiowa.edu/linux/help/start/remote)
## Command glossary
- `echo` - print text to screen
- `cd` - 'change directory', if typed without following options, will change to your home folder
- `ls` - 'list', prints the contents of a directory
- `cp` - 'copy', equivalent to copying and pasting file, original stays in place
- `mv` - 'move', equivalent to cutting and pasting file, original is deleted
- `mkdir` - 'make directory', creates a new directory of the name given
- `pwd` - 'primary working directory', prints the name of the current working directory
- `rm` - 'remove', this deletes a file ***WARNING*** the command line does not have a recycling bin, so anything `rm`ed stays deleted!
- `~` - symbol for home folder, i.e. `cd ~` will change directory to `/home/HawkID/`
- `grep` - search function
- `cat` - 'con***cat***enate', print contents of file to terminal window
- `head` - read the start of a file and print to screen
- `tail` - read teh end of a file and print to screen
- `touch` - create a new file

## Helpful command line keyboard shortcuts
- `ctrl+alt+t` - open a new terminal window
- `ctrl+shift+c` - copy selection, the equivalent to `ctrl+c` in most programs
- `ctrl+shift+v` - paste selection, the equivalent to `ctrl+v` in most programs
- `home` - brings cursor to beginning of current line
- `end` - brings cursor to end of current line
- `ctrl+left arrow` - shifts cursor one word/term left
- `ctrl+right arrow` - shifts cursor one word/term right
- `=` - sets a variable equal to some value, i.e. `x=1` or `x='some string of text'`
- `==` - indicates equivalence for two values, i.e. `if [ x == 1 ]; then do echo "true"; done`