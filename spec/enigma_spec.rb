require './spec_helper'


describe Enigma do
  before :each do
    @enigma = Enigma.new


  end

  it 'exists' do
    expect(@enigma).to be_a(Enigma)
  end

  it 'can encrypt input with 3 arguments, string, key, date' do
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


#iteration4 required tests
describe Enigma do
  before :each do
    @enigma = Enigma.new


  end

  xit 'encrypts the message into 1 word' do
    expected = {
      encryption: "vjqtbeaweqihssi",
      key: "08304",
      date: "291018"
    }
    expect(enigma.encrypt("hello world end", "08304", "291018")).to eq(expected)
  end

  xit 'can crack encryption with only a date' do
    expected = {
      decryption: "hello world end",
      date: "291018",
      key: "08304"
    }
    expect(enigma.crack("vjqtbeaweqihssi", "291018")).to eq(expected)
  end

  xit 'can crack an encryption using todays date' do
    # expected = {
    #   decryption: "hello world end",
    #   date:  #todays date in the format DDMMYY,
    #   #key: # key used for encryption
    # }
    expect(enigma.crack("vjqtbeaweqihssi")).to eq(expected)
  end
end
