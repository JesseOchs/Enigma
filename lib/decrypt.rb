class Decrypt
  attr_reader :decrypt_message
  def initialize(ciphertext, key, date)
    @ciphertext = ciphertext
    @key = key
    @date = date
    @decrypt_message = {key: key, date: date}
  end



end
