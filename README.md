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
- [ ] Privileges and location
  - [ ] Find out your current user
  - [ ] Get current location
	- [ ] And home directory
  - [ ] See how these change under `sudo`
      - [ ] Current user
      - [ ] Home directory
- [ ] Move around, see the sights
  - [ ] Home directory
  - [ ] Filesystem root
  - [ ] Root's home directory
  - [ ] See file permissions

### more useful tasks

explain how to store information through pipes and redirect (tests will run on
piped output)

#### What's in my `$PATH`?

environment vars and what they mean

#### Clean out the cruft

deleting with `/**/` and wildcards

#### Check for stray processes

(grepping on `ps`)

------

### further reading

- [Workshop Bash](http://workshop-bash.com/)
- [Shell Programming slides](http://www.udel.edu/it/learnit/course/class_materials/Unix_Workshop_Series/Shell-Programming-UNIX.pdf)
