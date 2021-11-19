#!/usr/bin/env bats

@test "greet: say hello to argument" {
  result=$(./script.sh greet linus)
  [ "$result" == "hello, linus" ]
}

@test "error: show error and exit with 1" {
  run ./script.sh error
  [ "$status" -eq 1 ]
  [ "$output" = "ERROR: script.sh, line 11: this is not so good" ]
}
