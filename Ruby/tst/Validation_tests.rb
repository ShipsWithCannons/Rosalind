Dir["../lib/*.rb"].each {|file| require file }

arr1 = [0, 1, 2, 3]
arr2 = [1, 2, 3, 4]
upp = "UPPER"
low = "LOWER"
num = 42
nums = "42"

n = Validation.new
n.EqualSize(arr1, arr2)
n.EqualSize(upp, low)
n.Uppercase(upp)
n.Numeric(num)
