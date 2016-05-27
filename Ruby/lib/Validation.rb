class Validation
  def Numeric(input)
    raise ArgumentError, 'Argument is not numeric' unless input.is_a?(Numeric)
  end
  def Uppercase(input)
    raise ArgumentError, 'Argument is not uppercase' unless input == input.upcase
  end
  def EqualSize(left, right)
    raise ArgumentError, 'Arguments are not of equal size' unless left.size == right.size
  end
end
