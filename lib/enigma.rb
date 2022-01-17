require_relative './generator'
require_relative './encrypt'
require_relative './decrypt'
require_relative './shifts'

class Enigma
  include Generator
  include Encrypt
  include Decrypt
  include Shifts

  def encrypt(message, key = gen_key, date = gen_date)
    return output = {
      encryption: encrypt_message(message.downcase, key, date),
      key: key,
      date: date }
  end

  def decrypt(ciphertext, key, date = gen_date)
    return output = {
      decryption: decrypt_message(ciphertext, key, date),
      key: key,
      date: date }
  end

end
