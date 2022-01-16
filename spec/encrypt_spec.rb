require './spec_helper'

describe Encrypt do
  before :each do

    @enigma = Enigma.new

  end


  it 'can swap characters' do
    expect(@enigma.character_swap("a")).to eq(0)
  end

  it 'can encrypt a message' do
    expect(@enigma.encrypt_message("hello world", "02715", "040895")).to eq("keder ohulw")
  end
end
