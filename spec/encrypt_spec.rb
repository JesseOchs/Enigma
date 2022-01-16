require './spec_helper'

describe Encrypt do
  before :each do

    @enigma = Enigma.new

  end


  it 'can create keys' do
    expected = [12, 23, 34, 45]
    expect(@enigma.make_keys("12345")).to eq(expected)
  end

  it 'can create offsets' do
    expected = [4, 8, 8, 4]
    expect(@enigma.make_offsets("150122")).to eq(expected)
  end

  it 'can make shifts from keys and date' do
    expected = [16, 31, 42, 49]
    expect(@enigma.make_shifts("12345", "150122")).to eq(expected)
  end
end
