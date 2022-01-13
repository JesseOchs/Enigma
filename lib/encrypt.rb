class Encrypt
#include module to create letters array
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @encryptition = {key: key, date: date}
  end

  def encrypt_message
    @encryption
  end

end
