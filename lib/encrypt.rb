class Encrypt
  attr_reader :encrypt_message
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @encrypt_message = {key: key, date: date}
  end



end
