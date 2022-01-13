require './spec_helper'


describe Enigma do
  before :each do
    @enigma = Enigma.new


  end

  xit 'exists' do
    expect(@enigma).to be_a(Enigma)
  end

  xit 'can encrypt with 3 arguments, string, key, date' do
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  xit 'can decrypt a message with 3 arguments, string, key, date' do
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end

  xit 'can default the date to todays date' do
    @enigma.encrypt("hello world", "02715")
  end

  xit 'can create random keys and use todays date' do
    enigma.encrypt("hello world")
  end

end
