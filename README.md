# Issues

An Elixir CLI app that pulls issues from GitHub (from "Programming Elixir" by Dave Thomas)

## Requirements
- Erlang 24.0.1
- Elixir 1.12.0-otp-24

## Getting Started
1. Compile the project
```sh
$ mix deps.get
$ mix -S mix
$ mix escript.build
```
2. Use the generated executable to query the issue tracker of your desired project
```
# usage: ./issues <user> <project> <issue count>
$ ./issues elixir-lang elixir 5
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc):
```sh
$ mix docs
```
