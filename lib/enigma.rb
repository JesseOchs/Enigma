require './generator'

class Enigma
  include Generator

  def encrypt(message, key = @gen_key, date = @gen_date)
    encryption = Encrypt.new(message, key  , date)
    encryption.encrypt_message
  end

  def decrypt(ciphertext, key, date)
    decryption = Decrypt.new(ciphertext,key, date)
    decryption.decrypt_message
  end

end
