require './generator'
require './encrypt'
require './decrypt'
require './shifts'

class Enigma
  include Generator
  include Encrypt
  include Decrypt
  include Shifts

  def encrypt(message, key = @gen_key, date = @gen_date)
    return output = {
      encryption: encrypt_message(message, key, date),
      key: key,
      date: date }
  end

  def decrypt(ciphertext, key, date)
    return output = {
      decryption: decrypt_message(ciphertext, key, date),
      key: key,
      date: date }
  end

end
