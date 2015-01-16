#!/usr/bin/env bats

@test "mywork folder exists" {
  result="$(echo 2+2 | bc)"
  [ "$result" -eq 4 ]
}

@test "empty files created" {
		
}

@test "subdirectories created" {

}

@test "file copies exist within subdirectories" {

}

@test "symlink pointing to file1 exists" {

}

@test "dir2 doesn't exist (deleted)" {

}

@test ".gitignore exists in dir1 and ignores node_modules" {

}
