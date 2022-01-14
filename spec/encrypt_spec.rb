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

end
