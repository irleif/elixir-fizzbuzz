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

  test "range with negative and positive numbers" do
    expected_result = [
      :buzz,
      :fizz,
      -8,
      -7,
      :fizz,
      :buzz,
      -4,
      :fizz,
      -2,
      -1,
      0,
      1,
      2,
      :fizz,
      4,
      :buzz,
      :fizz,
      7,
      8,
      :fizz,
      :buzz
    ]

    assert Fizzbuzz.run(-10..10) == expected_result
  end

  test "check numbers 1 through 100 (official FizzBuzz test)" do
    expected_result = [
      1,
      2,
      :fizz,
      4,
      :buzz,
      :fizz,
      7,
      8,
      :fizz,
      :buzz,
      11,
      :fizz,
      13,
      14,
      :fizz_buzz,
      16,
      17,
      :fizz,
      19,
      :buzz,
      :fizz,
      22,
      23,
      :fizz,
      :buzz,
      26,
      :fizz,
      28,
      29,
      :fizz_buzz,
      31,
      32,
      :fizz,
      34,
      :buzz,
      :fizz,
      37,
      38,
      :fizz,
      :buzz,
      41,
      :fizz,
      43,
      44,
      :fizz_buzz,
      46,
      47,
      :fizz,
      49,
      :buzz,
      :fizz,
      52,
      53,
      :fizz,
      :buzz,
      56,
      :fizz,
      58,
      59,
      :fizz_buzz,
      61,
      62,
      :fizz,
      64,
      :buzz,
      :fizz,
      67,
      68,
      :fizz,
      :buzz,
      71,
      :fizz,
      73,
      74,
      :fizz_buzz,
      76,
      77,
      :fizz,
      79,
      :buzz,
      :fizz,
      82,
      83,
      :fizz,
      :buzz,
      86,
      :fizz,
      88,
      89,
      :fizz_buzz,
      91,
      92,
      :fizz,
      94,
      :buzz,
      :fizz,
      97,
      98,
      :fizz,
      :buzz
    ]

    assert Fizzbuzz.run(1..100) == expected_result
  end
end
