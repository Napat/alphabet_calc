require "alphabet_calc/version"
require "alphabet_calc/alphabet_num"

module AlphabetCalc

  def calculate( input )
    numeric_equation = input.gsub(/([a-z]+)/) { |word| AlphabetNum.new(word).to_int }
    result = eval( numeric_equation )
    AlphabetNum.new(result).to_str
  end

  module_function :calculate

end
