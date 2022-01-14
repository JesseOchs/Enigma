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
    @encrypt = Encrypt.new(@encrypt_data[:decryption], @encrypt_data[:key], @encrypt_data[:date])


  end

  xit 'exists' do
    expect(@encrypt).to be_a(Encrypt)
  end

  xit 'has attributes' do
    expected = {
      key: "02715",
      date: "040895"
    }
    expect(@encrypt.message).to eq("hello world")
    expect(@encrypt.key).to eq("02715")
    expect(@encrypt.date).to eq("040895")
    expect(@encrypt.encryption).to eq(expected)
  end

  xit 'can create keys' do
    expect(a key).to be_a(Integer)
    expect(a key.size).to eq(2)
    expect(b key).to be_a(Integer)
    expect(b key.size).to eq(2)
    expect(c key).to be_a(Integer)
    expect(c key.size).to eq(2)
    expect(d key).to be_a(Integer)
    expect(d key.size).to eq(2)
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
