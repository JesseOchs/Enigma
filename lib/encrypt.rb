require './generator'

module Encrypt
  include Generator

  # attr_reader :message, :key, :date, :encryption
  # def initialize(message, key, date)
  #   @message = message
  #   @key = key
  #   @date = date
  #   @encryption = {key: key, date: date}
  # end

  def encrypt_message(message, key, date)
    @encryption
  end


  def make_keys(key)
    keys = []
      keys << key[0,2].to_i
      keys << key[1,2].to_i
      keys << key[2,2].to_i
      keys << key[3,2].to_i
    return keys
  end

  def make_offsets(date)
    offsets = []
    date = (date.to_i ** 2).to_s
      offsets << date[-4,2].to_i
      offsets << date[-3,2].to_i
      offsets << date[-2].to_i
      offsets << date[-1].to_i
      return offsets
  end

  def make_shifts(key, date)
    shifts = make_keys(key).zip(make_offsets(date))
      shifts.map do |pair|
        pair.sum 
      end
  end

end
