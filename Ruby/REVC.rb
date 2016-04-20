def reverse_complement(input)
  revc = ""
  input.reverse.scan(/A|C|G|T/) do |sub|
    case sub
    when "A"
      revc += "T"
    when "C"
      revc += "G"
    when "G"
      revc += "C"
    when "T"
      revc += "A"
    end
  end
  return revc
end

user_input = gets.chomp

puts reverse_complement(user_input)