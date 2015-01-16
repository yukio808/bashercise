#!/usr/bin/env bats

@test "mywork folder exists" {
    [ -d mywork ]
}

@test "empty files created" {
    result="$(ls empty*)"
		[ -f empty1 ] && [ -f empty2 ]
}

@test "mywork subdirectories created" {
    result="$(ls -d mywork/*/)"
    [ -d mywork/dir1 ] && [ -d mywork/dir2 ]
}

@test "file copies exist within subdirectory 1" {
    [ -f mywork/dir1/empty1 ] && [ -f mywork/dir1/empty2 ]
}

@test "symlink pointing to empty1 exists" {
    result="$(ls -l | grep -e '->' | sed -n 1p)" # step 1, get first link
    # [ ${#result} > 0 ] # length of result greater than zero
    # step 2, check source and dest names
    tgtstr="sym1 -> empty1"
    cutstrlen=${result/$tgtstr}
    cutstrlen=${#cutstrlen} # god I suck at bash
    [ $cutstrlen -lt ${#result} ] # cutting out the target string from the
                                  # result reduces result's length
}

@test "dir2 doesn't exist (deleted), dir1 remains" {
    [ ! -d dir2 ] && [ -d dir1 ] # we should only see dir1
}

@test ".gitignore exists in dir1 and ignores node_modules in first line" {
    # result="$(ls -a dir1 | grep .gitignore)"
    ignorecontents="$(cat dir1/.gitignore | sed -n 1p)"
    [ "$ignorecontents" = "node_modules" ]
}
