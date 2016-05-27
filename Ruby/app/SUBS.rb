def find_substring_locations(long, short)
  mpos = []
  re = Regexp.new(short)
  m = i = 0
  m = re.match( long, i ) { |k| j = k.begin(0); i = j + 1; mpos << j } while m
  return mpos
end

def plus_one(input)
  arr = []
  for i in input
    arr << (i += 1)
  end
  arr
end

main_string = gets.chomp
sub_string = gets.chomp
p plus_one(find_substring_locations(main_string, sub_string))