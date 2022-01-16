require './generator'
require './encrypt'

class Enigma
  include Generator
  include Encrypt

  def encrypt(message, key = @gen_key, date = @gen_date)
    #encryption = Encrypt.new(message, key  , date)
    encryption.encrypt_message(message, key, date)
  end

  def decrypt(ciphertext, key, date)

    decryption.decrypt_message
  end

end
