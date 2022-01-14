require './spec_helper'


describe Generator do
  before :each do
    @enigma = Enigma.new


  end

  xit 'can generate a random number' do
    expect(@enigma.gen_key).to be_a(Integer)
    expect(@enigma.gen_key.size).to eq(5)
  end

  xit 'can generate todays date' do
    expect(@enigma.gen_date).to be_a(Integer)
    expect(@enigma.gen_date.size).to be_a(6)
  end


  xit 'can generate characters' do
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    expect(@enigma.gen_characters).to eq(expected)
  end
end
