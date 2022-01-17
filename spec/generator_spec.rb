require './spec_helper'


describe Generator do
  before :each do
    @enigma = Enigma.new


  end

  it 'can generate a random key' do
    expect(@enigma.gen_key).to be_a(String)
    expect(@enigma.gen_key.size).to eq(5)
  end

  it 'can generate todays date' do
    expect(@enigma.gen_date).to be_a(String)
    expect(@enigma.gen_date.size).to eq(6)
    expect(@enigma.gen_date).to eq(Time.now.strftime("%d%m%y"))
  end


  it 'can generate characters' do
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    expect(@enigma.gen_characters).to eq(expected)
  end
end
