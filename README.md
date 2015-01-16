# bashercise

> Bashercise is a dance-based group fitness program.

-- *Wikipedia*

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
  - [ ] See how these change under `sudo` and `sudo su`
      - [ ] Current user
      - [ ] Home directory `~`
- [ ] Move around, see the sights
  - [ ] Home directory
  - [ ] Filesystem root
  - [ ] Root's home directory
  - [ ] See file permissions in a directory

### more useful tasks

explain how to store information through pipes and redirect (tests will run on
piped output)

#### Set yourself up a little work directory

- [ ] A `mywork` folder
- [ ] Prove you can manage files and folders inside it
  - [ ] Make empty files
  - [ ] Make directories
  - [ ] Copy files into directories
  - [ ] Copy a directory
  - [ ] Move directories into other directories
  - [ ] Symlink one directory to another
  - [ ] Delete a directory
  - [ ] Add a `.gitignore` file to a directory

#### What's in my `$PATH`?

environment vars and what they mean

#### Check for stray processes

(grepping on `ps`)

------

### further reading

- [Workshop Bash](http://workshop-bash.com/)
- [Shell Programming slides](http://www.udel.edu/it/learnit/course/class_materials/Unix_Workshop_Series/Shell-Programming-UNIX.pdf)
