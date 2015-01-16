#!/usr/bin/env bats

@test "MYPATH prepended with home dir" {
    teststr=$HOME:
		[ "$MYPATH" != "${MYPATH%$teststr*}" ]
}
