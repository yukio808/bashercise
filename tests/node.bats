#!/usr/bin/env bats

@test "no node processes running" {
    teststr=$(ps acx | grep node)
    [ ${#teststr} -eq 0 ]
}
