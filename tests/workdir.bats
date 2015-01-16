#!/usr/bin/env bats

@test "mywork folder exists" {
    result="$(ls -d mywork)"
    [ "$result" -eq "mywork" ]
}

@test "empty files created" {
    result="$(ls empty*)"
		[ "$result" -eq "empty1 empty2" ]
}

@test "mywork subdirectories created" {
    result="$(ls -d mywork/*/)"
    [ "$result" -eq "mywork/dir1/ mywork/dir2/" ]
}

@test "file copies exist within subdirectory 1" {
    result="$(ls mywork/dir1)"
    [ "$result" -eq "empty1 empty2" ]
}

@test "symlink pointing to empty1 exists" {
    result="$(ls -ltra | grep -e '->' | sed -n 1p)" # step 1, get first link
    # [ ${#result} > 0 ] # length of result greater than zero
    # step 2, check source and dest names
    tgtstr="sym1 -> "$(pwd)"empty1" # gross string concatentation
    cutstrlen=${result/$tgtstr}
    cutstrlen=${#cutstrlen} # god I suck at bash
    [ $cutstrlen -lt ${#result} ] # cutting out the target string from the
                                  # result reduces result's length
}

@test "dir2 doesn't exist (deleted), dir1 remains" {
    result="$(ls -d */)"
    [ "$result" -eq "dir1/" ] # we should only see dir1
}

@test ".gitignore exists in dir1 and ignores node_modules" {
    result="#(ls -a dir1 | grep .gitignore)"
    [ ${#result} > 0 ]
}
