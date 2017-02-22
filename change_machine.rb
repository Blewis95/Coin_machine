def only_numbers(input)
	if input.class == Fixnum
		return true
	else
		return false
	end
end

def calculations(input)

	if only_numbers(input) == true

		dollar_counter = 0
		quarter_counter = 0
		dime_counter = 0
		nickel_counter = 0
		penny_counter = 0

		begin
			if(input >= 100)
				input = input - 100
				dollar_counter += 1
			elsif(input >= 25)
				input = input - 25
				quarter_counter += 1
			elsif(input >= 10)
				input = input - 10
				dime_counter += 1
			elsif(input >= 5)
				input = input - 5
				nickel_counter += 1
			elsif(input == 1)
				input = input - 1
				penny_counter += 1
			end
		end while (input > 0)

		total = {:dollar => dollar_counter, :quarter => quarter_counter, :dime => dime_counter, :nickel => nickel_counter, :penny => penny_counter}

		return total
	else
		return "Error"
	end
end