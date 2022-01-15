require './spec_helper'

describe Encrypt do
  before :each do
    @encrypt_data = {
                      decryption: "hello world",
                      key: "02715",
                      date: "040895"
                    }
    @decrypt_data = {
                      encryption: "keder ohulw",
                      key: "02715",
                      date: "040895"
                    }
    @enigma = Enigma.new


  end


  it 'can create keys' do
    expected = [12, 23, 34, 45]
    expect(@enigma.make_keys("12345")).to eq(expected)

  end

  xit 'can create offsets' do
    expect(a offset).to be_a(Integer)
    expect(a offset.size).to eq(1)
    expect(b offset).to be_a(Integer)
    expect(b offset.size).to eq(1)
    expect(c offset).to be_a(Integer)
    expect(c offset.size).to eq(1)
    expect(d offset).to be_a(Integer)
    expect(d offset.size).to eq(1)

  end

end
