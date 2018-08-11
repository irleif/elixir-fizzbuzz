defmodule Fizzbuzz do
  @moduledoc """
  Elixir implementation of [the Fizz-Buzz Test](http://wiki.c2.com/?FizzBuzzTest).

  ## Program Logic

  * `Fizzbuzz.check()` returns the numbers it receives, with the following rules applied:
  ** For multiples of 3, the atom `:fizz` will be returned instead of the number.
  ** For multiples of 5, the atom `:buzz` will be returned instead of the number.
  ** For multiples of both 3 and 5, the atom `:fizz_buzz` will be returned instead of the number.
  ** For 0, instead of returning the atom `:fizz_buzz`, 0 will be returned.

  As input, the program accepts integers, lists of integers and ranges.

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

  @typep result :: integer | :fizz | :buzz | :fizz_buzz

  @spec check(integer | list(integer) | Range.t()) :: [result]
  def check(number) do
    case number do
      number when is_integer(number) ->
        check_number(number)

      number ->
        Enum.map(number, fn n ->
          check_number(n)
        end)
    end
  end

  @spec check_number(integer) :: result
  defp check_number(number) do
    case {rem(number, 3), rem(number, 5), number} do
      {0, 0, 0} -> 0
      {0, 0, _} -> :fizz_buzz
      {0, _, _} -> :fizz
      {_, 0, _} -> :buzz
      {_, _, _} -> number
    end
  end
end
