require './generator'
require './shifts'

module Decrypt
  include Generator
  include Shifts

  def decrypt_message(ciphertext, key, date)
    output = ''
    ciphertext.each_char.with_index do |char, index|
      if gen_characters.include?(char) == false then output << char
      elsif index % 4 == 0 then output << gen_characters[shifted_characters(key, date)[:shift_1].index(char)]
      elsif index % 4 == 1 then output << gen_characters[shifted_characters(key, date)[:shift_2].index(char)]
      elsif index % 4 == 2 then output << gen_characters[shifted_characters(key, date)[:shift_3].index(char)]
      elsif index % 4 == 3 then output << gen_characters[shifted_characters(key, date)[:shift_4].index(char)]
      end
    end
    output
  end
end
