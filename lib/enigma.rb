class Enigma
# include module to build default keys and dates
  def initialize
    # @encryption = Encrypt.new
    # @decryption = Decrypt.new
  end

  def encrypt(message, key, date) #add module method for key and date
    encryption = Encrypt.new(message, key  , date)
    encryption.encrypt_message
  end

  def decrypt(ciphertext, key, date) 
    decryption = Decrypt.new(ciphertext,key, date)
    decryption.decrypt_message
  end

end
