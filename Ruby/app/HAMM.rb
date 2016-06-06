require_relative '../lib/Validation' 

def HammingDistance(left, right)
  v = Validation.new()
  v.EqualSize(left, right)
  distance = 0
  for index in 0..left.length - 1
    distance += 1 unless left[index] == right[index]
  end
  distance  
end

first = gets.chomp
second = gets.chomp
puts HammingDistance(first, second)
