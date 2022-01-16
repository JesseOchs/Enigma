require './generator'
require './encrypt'
require './decrypt'
require './shifts'

class Enigma
  include Generator
  include Encrypt
  include Shifts

  def encrypt(message, key = @gen_key, date = @gen_date)
    encryption.encrypt_message(message, key, date)
  end

  def decrypt(ciphertext, key, date)
    decryption.decrypt_message(ciphertext, key, date)
  end

end
