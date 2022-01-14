require './spec_helper'


describe Decrypt do
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
    @decrypt = Decrypt.new(@decrypt_data[:encryption], @decrypt_data[:key], @decrypt_data[:date])


  end


  xit 'exists' do
    expect(@decrypt).to be_a(Decrypt)
  end

  xit 'has attributes' do
    expected = {
      key: "02715",
      date: "040895"
    }
    expect(@decrypt.ciphertext).to eq("keder ohulw")
    expect(@decrypt.key).to eq("02715")
    expect(@decrypt.date).to eq("040895")
    expect(@decrypt.decryption).to eq(expected)
  end


end
