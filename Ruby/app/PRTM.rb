module Rosalind
  RESIDUE_BY_MONOISOTOPIC_MASS = {
    71.03711  => ["A"],
    103.00919 => ["C"],
    115.02694 => ["D"],
    129.04259 => ["E"],
    147.06841 => ["F"],
    57.02146  => ["G"],
    137.05891 => ["H"],
    113.08406 => ["I", "L"],
    128.09496 => ["K"],
    131.04049 => ["M"],
    114.04293 => ["N"],
    97.05276  => ["P"],
    128.05858 => ["Q"],
    156.10111 => ["R"],
    87.03203  => ["S"],
    101.04768 => ["T"],
    99.06841  => ["V"],
    186.07931 => ["W"],
    163.06333 => ["Y"]
  }

  MONOISOTOPIC_MASS_BY_RESIDUE = RESIDUE_BY_MONOISOTOPIC_MASS.
    flat_map { |c, as| as.map { |a| [a, c] } }.to_h

  def self.problem_prtm(aminoacids_string)
    aminoacids_string.
      scan(/[ACDEFGHIKLMNPQRSTVWY]{1}/).
      map { |residue| MONOISOTOPIC_MASS_BY_RESIDUE[residue] }.
      take_while { |aminoacid| aminoacid != "" }.
      inject(0){|sum,x| sum + x }
  end
end

user_input = gets.chomp
puts '%.3f' % Rosalind.problem_prtm(user_input)