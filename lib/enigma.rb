require './generator'
require './encrypt'
require './decrypt'
require './shifts'

class Enigma
  include Generator
  include Encrypt
  include Decrypt
  include Shifts

  def encrypt(message, key = gen_key, date = gen_date)
    {
      encryption: encrypt_message(message.downcase, key, date),
      key: key,
      date: date
    }
  end

  def decrypt(ciphertext, key, date = gen_date)
    {
      decryption: decrypt_message(ciphertext, key, date),
      key: key,
      date: date
    }
  end
end
