#!/usr/bin/env bats

@test "greet: say hello to argument" {
  result=$(./script.sh greet linus)
  [ "$result" == "hello, linus" ]
}

@test "error: show error and exit with 1" {
  result=$(./script.sh error)
  [ "$result" == "hello, linus" ]
}
