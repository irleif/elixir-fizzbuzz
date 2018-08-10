defmodule Fizzbuzz do
  @moduledoc """
  Documentation for Fizzbuzz.
  """

  @doc """
  Fizzbuz

  ## Examples

      iex> Fizzbuzz.run(1)
      1

      iex> Fizzbuzz.run(3)
      :fizz

      iex> Fizzbuzz.run(5)
      :buzz

      iex> Fizzbuzz.run(15)
      :fizz_buzz

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
      {0, 0, _} -> :fizz_buzz
      {0, _, _} -> :fizz
      {_, 0, _} -> :buzz
      {_, _, _} -> number
    end
  end
end
