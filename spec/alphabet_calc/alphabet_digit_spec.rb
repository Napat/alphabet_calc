require 'spec_helper'
require 'alphabet_calc/alphabet_digit'

describe AlphabetCalc::AlphabetDigit do
  it 'return correct value for "a"' do
    a = AlphabetCalc::AlphabetDigit.new('a')
    expect(a.to_int).to eq 0
  end
  it 'return correct value for "z"' do
    z = AlphabetCalc::AlphabetDigit.new('z')
    expect(z.to_int).to eq 25
  end
end