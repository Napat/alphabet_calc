require 'spec_helper'
require 'alphabet_calc'

describe AlphabetCalc do
  describe 'caculate' do
    it 'should evaluate the input correctly' do
      expect( AlphabetCalc::calculate('a+a') ).to eq 'a'
      expect( AlphabetCalc::calculate('z+b') ).to eq 'ba'
      expect( AlphabetCalc::calculate('lina+luna') ).to eq 'xdaa'
      expect( AlphabetCalc::calculate('is+and') ).to eq 'vv'
      expect( AlphabetCalc::calculate('(z+b)/(ba*b)') ).to eq 'b'
    end
  end
end