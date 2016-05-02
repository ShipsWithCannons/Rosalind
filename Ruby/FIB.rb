def wabbits(n, k)
    fibs = 1, 1, k + 1
    4.upto n do |x|
        fibs[0] = fibs[1]
        fibs[1] = fibs[2]
        fibs[2] = fibs[0] * k + fibs[1]
    end
    return fibs[2]
end

user_input = gets.chomp
split_input = user_input.split().map { |number| number.to_i() }
puts wabbits(split_input[0], split_input[1])