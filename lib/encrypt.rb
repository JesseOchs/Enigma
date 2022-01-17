require './generator'
require './shifts'

module Encrypt
  include Generator
  include Shifts

  def encrypt_message(message, key, date)
    output = ''
    message.each_char.with_index do |char, index|
      if gen_characters.include?(char) == false then output << char
      elsif index % 4 == 0 then output << shifted_characters(key, date)[:shift_1][gen_characters.index(char)]
      elsif index % 4 == 1 then output << shifted_characters(key, date)[:shift_2][gen_characters.index(char)]
      elsif index % 4 == 2 then output << shifted_characters(key, date)[:shift_3][gen_characters.index(char)]
      elsif index % 4 == 3 then output << shifted_characters(key, date)[:shift_4][gen_characters.index(char)]
      end
    end
    output
  end
end
