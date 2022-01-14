require './spec_helper'


describe Generator do
  before :each do
    @enigma = Enigma.new


  end

  xit 'can generate a random number' do
    expect(@gen_key).to be_a(Integer)
  end

  xit 'can generate todays date' do
    expect(@gen_date).to be_a(Integer)
  end

  xit 'can generate characters' do
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    expect(@enigma.gen_characters).to eq(expected)
  end
end
