# bashercise

> Bashercise is a dance-based group fitness program.

-- *Wikipedia* ([source](https://en.wikipedia.org/wiki/Jazzercise))

## setup

1. Install the Bash Automated Testing System (BATS!):

		git clone https://github.com/sstephenson/bats
		cd bats
		sudo ./install.sh /usr/local
		
2. Clone this repo:

		git clone https://github.com/devleague/bashercise
		cd bashercise

## tasks

### easy stuff

Run each of these commands and understand their output:

- [ ] Get some basic system info
  - [ ] Kernel version
  - [ ] Release version
	  - OSX: `system_profiler SPSoftwareDataType`
	  - Linux: `lsb_release -a`
- [ ] Location and context
  - [ ] Find out your current user (with a command)
  - [ ] Get current location (hint: "present working directory")
	- [ ] And home directory (hint: what happens if you type `cd` with no args?)
  - [ ] See how these change under `sudo`...
      - [ ] Current user
      - [ ] Home directory `~`
  - [ ] ...and `sudo su`
      - [ ] Current user
      - [ ] Home directory
- [ ] Move around, see the sights
  - [ ] Home directory
  - [ ] Filesystem root
  - [ ] Root's home directory
  - [ ] See file permissions in a directory

### more useful tasks

Shells are extremely powerful, but they didn't get that reputation by letting
you type in one thing at a time to see what happens. Most shell commands take
unlimited arguments (divided by spaces), and they can also 'pipe' their outputs
in a stream to other programs or into files.

This is fairly easy to do: just imagine moving the output you see when you type
a command going to the input of another. This is 'standard output', or `STDOUT`.

To put this into a file (called 'output redirect'), you write:

    command > filename    # overwrites a file named 'filename' with the output of 'command'
    command >> filename   # appends output of 'command' to file

To pass output to another program, you use the 'pipe' character, (usually
located on the backslash '\' key):

    cmd1 params | cmd2    # runs 'cmd1' with 'params' and passes the output to cmd2

This lets you do things that require multiple steps or more complicated logic
without having to write a whole program to do the job. In fact, shell programs
for Linux (and by extension, OSX) follow the philosophy of 'do one thing and do
it well' because they *expect* that they will be connected by pipes! Cool,
right?

#### Set yourself up a little work directory

Perform the following steps:

- [ ] Create a `mywork` folder
- [ ] Prove you can manage files and folders inside it
  - [ ] Make empty files: `empty1`, `empty2`
  - [ ] Make directories: `dir1`, `dir2`, `dir3`
  - [ ] Copy a directory into another directory: `dir1` to `mywork/`
  - [ ] Copy files into directories: `empty1` and `empty2` into `mywork/dir1/`
  - [ ] Move directories into other directories: `dir2` into `mywork/`
  - [ ] Symlink to a directory: `sym1` to `empty1`
  - [ ] Delete a directory: `dir3`
  - [ ] Add a `.gitignore` file inside the `dir1/` directory and ignore `node_modules`

Test yourself by running `bats tests/workdir.bats`.

#### What's in my `$PATH`?

Bash lets you store things in variables, which are referred to with `$`. Many of
these are part of the environment bash runs in, and are set by the system or a
configuration file `~/.bashrc` that runs when the shell does. A great example is
`$PATH`. `$PATH` tells bash where to look when you type the name of a
command. If there wasn't a `$PATH`, you would have to type the absolute path
every time　(snooze city amirite).

To find out its value, type `echo $PATH` in the terminal.

You can add other directories to `$PATH`. Just to demonstrate how this works
(without actually modifying `$PATH`), let's copy its value to another variable
and play with it:

    MYPATH=$PATH         # note no spaces
    echo $MYPATH         # you need the $ to reference a variable
    echo $HOME           # what does this show?
    MYPATH=$HOME:$MYPATH # prepend the new directory to your path

To prove it worked, run `bats tests/path.bats`.

#### Check for stray processes

Did you leave `node` running in a terminal and forget about it? If so, you can
find it and kill it without digging around in your GUI. Open another terminal,
run `node`, then return to your original terminal and do this:

    ps acx               # what's running?
    ps acx | grep node   # search for the pattern 'node' in the output
    kill PID             # replace PID with the process ID of the node process

Kill all your node processes this way, then run `bats tests/node.bats`.

------

### further reading

- [Workshop Bash](http://workshop-bash.com/)
- [Shell Programming slides](http://www.udel.edu/it/learnit/course/class_materials/Unix_Workshop_Series/Shell-Programming-UNIX.pdf)
