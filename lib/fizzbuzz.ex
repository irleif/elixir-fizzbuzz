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
  def run(number) do
    fizzbuzz(number)
  end

  defp fizzbuzz(number) do
    case {rem(number, 3), rem(number, 5), number} do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, _} -> number
    end
  end
end
