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
    expected = {
      :shift_1 => ["d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", "a", "b", "c"],
      :shift_2 => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "],
      :shift_3 => ["t", "u", "v", "w", "x", "y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s"],
      :shift_4 => ["u", "v", "w", "x", "y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t"]
    }
    expect(@enigma.shifted_characters("02715", "040895")).to eq(expected)
  end



end
