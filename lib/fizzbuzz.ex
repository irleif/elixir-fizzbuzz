defmodule Fizzbuzz do
  @moduledoc """
  Elixir implementation of [the Fizz-Buzz Test](http://wiki.c2.com/?FizzBuzzTest).

  ## Program Logic

  * `Fizzbuzz.check()` returns the numbers it receives, with the following rules applied:
  ** For multiples of 3, the atom `:fizz` will be returned instead of the number.
  ** For multiples of 5, the atom `:buzz` will be returned instead of the number.
  ** For multiples of both 3 and 5, the atom `:fizz_buzz` will be returned instead of the number.
  ** For 0, instead of returning the atom `:fizz_buzz`, 0 will be returned.

  As input, the program accepts numbers, lists and ranges.

  ## Examples

  iex> Fizzbuzz.check(15)
  :fizz_buzz

  iex> Fizzbuzz.check([1, 2, 3, 5, 8, 13, 21])
  [1, 2, :fizz, :buzz, 8, 13, :fizz]

  iex> Fizzbuzz.check(1..15)
  [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, 11, :fizz, 13, 14, :fizz_buzz]
  """

  @doc """
  Check input data type, then do FizzBuzz-check for each value accordingly.
  """
  def check(numbers) do
    n = numbers

    case n do
      n when is_integer(n) ->
        check_number(n)

      n when is_list(n) ->
        Enum.map(n, fn n -> check_number(n) end)

      n = %Range{} ->
        for n <- n do
          check_number(n)
        end
    end
  end

  defp check_number(number) do
    n = {rem(number, 3), rem(number, 5), number}

    case n do
      {0, 0, 0} -> 0
      {0, 0, _} -> :fizz_buzz
      {0, _, _} -> :fizz
      {_, 0, _} -> :buzz
      {_, _, _} -> number
    end
  end
end
