def countACGT(str)
  str.unpack("c*").group_by{|i| i}.values.sort.map(&:size)
end

user_input = gets.chomp

puts countACGT(user_input)