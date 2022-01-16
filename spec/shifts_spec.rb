require './spec_helper'


describe Shifts do
  before :each do

    @enigma = Enigma.new

  end

  it 'can make keys' do
    expect(@enigma.make_keys("02715")).to eq([2, 27, 71, 15])
  end

  it 'can make offsets' do
    expect(@enigma.make_offsets("040895")).to eq([1, 0, 2, 5])
  end

  it 'can make shifts' do
    expect(@enigma.make_shifts("02715", "040895")).to eq([3, 27, 73, 20])
  end

  it 'can shift characters' do
    expected = [["d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", "a", "b", "c"],
                ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "],
                ["t", "u", "v", "w", "x", "y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s"],
                ["u", "v", "w", "x", "y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t"]]
    expect(@enigma.shifted_characters("02715", "040895")).to eq(expected)
  end



end
