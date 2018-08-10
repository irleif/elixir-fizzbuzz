defmodule Fizzbuzz do
  @moduledoc """
  Documentation for Fizzbuzz.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Fizzbuzz.hello()
      :world

  """
  def run do
    fizzbuzz = fn n1, n2, n3 ->
      case {n1, n2, n3} do
        {0, 0, _} -> "FizzBuzz"
        {0, _, _} -> "Fizz"
        {_, 0, _} -> "Buzz"
        {_, _, _} -> n3
      end
    end

    result =
      for n <- 1..100 do
        fizzbuzz.(rem(n, 3), rem(n, 5), n)
      end

    Enum.map(result, fn n -> IO.puts(n) end)
  end
end
