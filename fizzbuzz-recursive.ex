#!/usr/bin/env elixir

defmodule FizzBuzz do

  def compute do
    compute(1)
  end

  def compute(n) when n > 100 do
    :ok
  end

  def compute(n) do
    IO.puts(case {rem(n,3),rem(n,5)} do
      {0,0} -> :fizzbuzz
      {0,_} -> :fizz
      {_,0} -> :buzz
      {_,_} -> n
    end)

    compute(n + 1)
  end

end

FizzBuzz.compute

