require 'spec_helper'
require 'alphabet_calc/alphabet_num'

describe AlphabetCalc::AlphabetNum do

  describe 'initialize from alphabets' do
    it 'return correct value for "a"' do
      a = AlphabetCalc::AlphabetNum.new('a')
      expect(a.to_int).to eq 0
    end
    it 'return correct value for "z"' do
      z = AlphabetCalc::AlphabetNum.new('z')
      expect(z.to_int).to eq 25
    end
    it 'return correct value for "ba"' do
      ba = AlphabetCalc::AlphabetNum.new('ba')
      expect(ba.to_int).to eq 26
    end
    it 'return correct value for "baz"' do
      baz = AlphabetCalc::AlphabetNum.new('baz')
      expect(baz.to_int).to eq 701
    end
  end

  describe 'initialize from number' do
    it 'return correct alphabets for 0' do
      a = AlphabetCalc::AlphabetNum.new(0)
      expect(a.to_str).to eq 'a'
    end
    it 'return correct alphabets for 25' do
      z = AlphabetCalc::AlphabetNum.new(25)
      expect(z.to_str).to eq 'z'
    end
    it 'return correct alphabets for 26' do
      ba = AlphabetCalc::AlphabetNum.new(26)
      expect(ba.to_str).to eq 'ba'
    end
    it 'return correct alphabets for 701' do
      baz = AlphabetCalc::AlphabetNum.new(701)
      expect(baz.to_str).to eq 'baz'
    end
  end

  describe 'initialize from invalid characters' do
    it 'dies if initialize with something else than a - z' do
      expect { AlphabetCalc::AlphabetNum.new('a+b') }.to raise_error
    end
  end

end