require 'spec_helper'
require 'alphabet_calc/alphabet_digit'

describe AlphabetCalc::AlphabetDigit do

  describe 'initialize from alphabet' do
    it 'return correct value for "a"' do
      a = AlphabetCalc::AlphabetDigit.new('a')
      expect(a.to_int).to eq 0
    end
    it 'return correct value for "z"' do
      z = AlphabetCalc::AlphabetDigit.new('z')
      expect(z.to_int).to eq 25
    end
  end

  describe 'initialize from number' do
    it 'return correct alphabet for 0' do
      a = AlphabetCalc::AlphabetDigit.new(0)
      expect(a.to_str).to eq 'a'
    end
    it 'return correct alphabet for 25' do
      z = AlphabetCalc::AlphabetDigit.new(25)
      expect(z.to_str).to eq 'z'
    end
  end

end