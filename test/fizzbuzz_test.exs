defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "if number is 0, return 0" do
    assert Fizzbuzz.run(0) == 0
    assert Fizzbuzz.run([0, 0, 0]) == [0, 0, 0]
  end

  test "if number is multiple of both 3 and 5, return :fizz_buzz" do
    assert Fizzbuzz.run(15) == :fizz_buzz
    assert Fizzbuzz.run([15, 30, 45]) == [:fizz_buzz, :fizz_buzz, :fizz_buzz]
  end

  test "if number is multiple of 3, return :fizz" do
    assert Fizzbuzz.run(3) == :fizz
    assert Fizzbuzz.run([3, 6, 9]) == [:fizz, :fizz, :fizz]
  end

  test "if number is multiple of 5, return :buzz" do
    assert Fizzbuzz.run(5) == :buzz
    assert Fizzbuzz.run([5, 10, 20]) == [:buzz, :buzz, :buzz]
  end

  test "if number is multiples of neither 3 nor 5, return the number" do
    assert Fizzbuzz.run(1) == 1
    assert Fizzbuzz.run([1, 2, 4]) == [1, 2, 4]
  end
end
