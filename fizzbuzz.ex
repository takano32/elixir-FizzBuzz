#!/usr/bin/env elixir

fb = fn(n) do
	loop n do
	match: 0
		0
	match: x
		recur(x - 1)
		case { rem(x, 5) == 0, rem(x, 3) == 0} do
		match: {true, true}
			IO.puts "FizzBuzz"
		match: {true, false}
			IO.puts "Buzz"
		match: {false, true}
			IO.puts "Fizz"
		else:
			IO.puts x
		end
	end
end


fb.(100)



