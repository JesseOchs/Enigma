class Decrypt
#include module to create letters array
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
