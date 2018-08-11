defmodule Fizzbuzz do
  @moduledoc """
  Documentation for FizzBuzz.
  """

  @doc """
  Simple implementation of [FizzBuzz](http://wiki.c2.com/?FizzBuzzTest) in Elixir.

  ## Examples

      iex> Fizzbuzz.run(15)
      :fizz_buzz

      iex> Fizzbuzz.run([1, 2, 3, 5, 8, 13, 21])
      [1, 2, :fizz, :buzz, 8, 13, :fizz]

  """

  def run(numbers) do
    n = numbers

    case n do
      n when is_integer(n) ->
        check(n)

      n when is_list(n) ->
        Enum.map(n, fn n -> check(n) end)
    end
  end

  defp check(number) do
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
