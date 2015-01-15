require 'spec_helper'
require 'alphabet_calc/alphabet_num'

describe AlphabetCalc::AlphabetNum do
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