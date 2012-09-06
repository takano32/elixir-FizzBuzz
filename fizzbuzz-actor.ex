#!/usr/bin/env elixir

defmodule FizzBuzz do

  def compute(parent) do
    compute(parent,1)
  end

  def compute(parent,n) when n > 100 do
    parent <- :ok
  end

  def compute(parent,n) do
    parent <- case {rem(n,3),rem(n,5)} do
      {0,0} -> :fizzbuzz
      {0,_} -> :fizz
      {_,0} -> :buzz
      {_,_} -> n
    end

    compute(parent,n+1)
  end

  def start do
    current_pid = Process.self

    spawn(fn do
      FizzBuzz.compute(current_pid)
    end)

    loop do
      receive do
        :ok -> :ok
        fizzbuzz -> 
         IO.inspect(fizzbuzz)
         recur
      after
        10 -> :timeout
      end
    end
  end

end

FizzBuzz.start

