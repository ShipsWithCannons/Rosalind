def perm(n)
  n = Integer(n)
  # Fill an alphabet
  alphabet = [('1'..n.to_s).to_a].flatten

  # Calculate factorial
  p (1..n).inject(:*) || 1

  # Calculate all possible permutations based on the created alphabet
  alphabet.permutation(n).each do |x|
    puts  x.join(' ').to_s
  end
end

user_input = gets.chomp
perm(user_input)