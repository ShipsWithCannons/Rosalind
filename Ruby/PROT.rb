def abbreviate(str)
  list = ""
  str.scan(/.../) do |sub|
    case sub
      when "UUU", "UUC"
        list += "F"
      when "UUA", "UUG" 
        list += "L"
      when "UCU", "UCC", "UCA", "UCG", "AGU", "AGC"
        list += "S"
      when "UAU", "UAC"
        list += "Y"
      when "UGU", "UGC"
        list += "C"
      when "UGG"
        list += "W"
      when "CUU", "CUC", "CUA", "CUG"
        list += "L"
      when "CCU", "CCC", "CCA", "CCG"
        list += "P"
      when "CAU", "CAC"
        list+= "H"
      when "CAA", "CAG"
        list += "Q"
      when "CGU", "CGC", "CGA", "CGG", "AGA", "AGG"
        list += "R"
      when "AUU", "AUC", "AUA"
        list += "I"
      when "AUG"
        list += "M"
      when "ACU", "ACC", "ACA", "ACG"
        list += "T"
      when "AAU", "AAC"
        list += "N"
      when "AAA", "AAG"
        list += "K"
      when "GUU", "GUC", "GUA", "GUG"
        list += "V"
      when "GCU", "GCC", "GCA", "GCG"
        list += "A"
      when "GAU", "GAC"
        list += "D"
      when "GAA", "GAG"
        list += "E"
      when "GGU", "GGC", "GGA", "GGG"
        list += "G"
      else
        return list
    end
  end
end

user_input = gets.chomp
abbreviate(user_input)