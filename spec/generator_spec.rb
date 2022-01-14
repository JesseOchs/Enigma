require './spec_helper'


describe Generator do
  before :each do



  end

  xit 'can generate a random number' do 
    expect(@gen_key).to be_a(Integer)
  end

  xit 'can generate todays date' do
    expect(@gen_date).to be_a(Integer)
  end

end
