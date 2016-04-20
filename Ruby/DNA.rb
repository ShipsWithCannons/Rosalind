def countACGT(str)
  list = [0,0,0,0]
  str.scan(/A|C|G|T/) do |sub|
    if sub == "A"
      list[0] += 1
    end
    if sub == "C"
      list[1] += 1
    end
    if sub == "G"
      list[2] += 1
    end
    if sub == "T"
      list[3] += 1
    end
  end
  return list
end