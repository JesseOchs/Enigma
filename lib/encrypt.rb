require './generator'

class Encrypt
  include Generator

  attr_reader :message, :key, :date, :encryption
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @encryption = {key: key, date: date}
  end

  def encrypt_message
    @encryption
  end

end
