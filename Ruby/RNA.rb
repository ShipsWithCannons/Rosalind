def T_to_U(input)
   return input.gsub(/T/, "U")
end

user_input = gets.chomp

puts T_to_U(user_input)