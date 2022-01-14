require './generator'

class Decrypt
  include Generator
  
  attr_reader :ciphertext, :key, :date, :decryption
  def initialize(ciphertext, key, date)
    @ciphertext = ciphertext
    @key = key
    @date = date
    @decryption = {key: key, date: date}
  end

  def decrypt_message
    @decryption
  end

end
