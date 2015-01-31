#!/usr/bin/env bats

@test "no node processes running" {
    run bash -c "ps acx | grep node"
    [ "$output" == "" ]
}
