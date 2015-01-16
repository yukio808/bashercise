#!/usr/bin/env bats

@test "MYPATH prepended with home" {
    teststr=$HOME:
    # testvar=$(echo $mypath | grep -ci $teststr)
    # [ $testvar -eq 1 ]
    [[ $(echo $mypath) == *"$teststr"* ]]
}
