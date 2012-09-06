#!/usr/bin/env elixir

Enum.each Erlang.lists.seq(1, 100, 1), fn(n) ->

  IO.puts(case {rem(n,3),rem(n,5)} do
    {0,0} -> :fizzbuzz
    {0,_} -> :fizz
    {_,0} -> :buzz
    {_,_} -> n
  end)

end

