# Elixir Fizz-Buzz

Elixir implementation of [the Fizz-Buzz Test](http://wiki.c2.com/?FizzBuzzTest).

This is the very first program I wrote as an exercise when learning Elixir.

## Program Logic

* `Fizzbuzz.check()` returns the numbers it receives, with the following rules applied:
  * For multiples of 3, the atom `:fizz` will be returned instead of the number.
  * For multiples of 5, the atom `:buzz` will be returned instead of the number.
  * For multiples of both 3 and 5, the atom `:fizz_buzz` will be returned instead of the number.
  * For 0, instead of returning the atom `:fizz_buzz`, 0 will be returned.

As input, the program accepts numbers, lists and ranges.

## Examples

```elixir
iex> Fizzbuzz.check(15)
:fizz_buzz

iex> Fizzbuzz.check([1, 2, 3, 5, 8, 13, 21])
[1, 2, :fizz, :buzz, 8, 13, :fizz]

iex> Fizzbuzz.check(1..100)
[1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, 11, :fizz, 13, 14,
 :fizz_buzz, 16, 17, :fizz, 19, :buzz, :fizz, 22, 23, :fizz, :buzz, 26, :fizz,
 28, 29, :fizz_buzz, 31, 32, :fizz, 34, :buzz, :fizz, 37, 38, :fizz, :buzz, 41,
 :fizz, 43, 44, :fizz_buzz, 46, 47, :fizz, 49, :buzz, ...]
```

## Installation

To try it out, clone this repository:

`git clone https://github.com/irleif/elixir-fizzbuzz.git`

Build and run it in the Elixir REPL:

`iex -S mix`

Then pass it some numbers, as shown in the examples above.