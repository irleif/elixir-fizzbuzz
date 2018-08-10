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
    n = {rem(number, 3), rem(number, 5), number}

    case n do
      {0, 0, _} -> {:ok, :fizz_buzz}
      {0, _, _} -> {:ok, :fizz}
      {_, 0, _} -> {:ok, :buzz}
      {_, _, _} -> {:ok, number}
    end
  end
end
