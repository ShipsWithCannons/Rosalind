def probability_dominant(k, m, n)
	return (k * k + k * (2 * m + 2* n - 1) + m * (0.75 * m + n - 0.75)) / ((k + m + n - 1) * (k + m + n))
end

user_input = gets.chomp

split_input = user_input.split().map { |number| number.to_i() }
puts probability_dominant(split_input[0], split_input[1], split_input[2])