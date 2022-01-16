require './spec_helper'


describe Decrypt do
  before :each do
      @enigma = Enigma.new
  end



  it 'can decrypt message' do
    expect(@enigma.decrypt_message('keder ohulw', "02715", "040895")).to eq("hello world")
  end


end
