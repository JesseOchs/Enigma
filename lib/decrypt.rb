require './generator'
require './shifts'

module Decrypt
  include Generator
  include Shifts

  def decrypt_message(ciphertext, key, date)
      output = ""
      ciphertext.each_char.with_index do |char, index|
        case
        when gen_characters.include?(char) == false then output << char
        when index % 4 == 0 then output << gen_characters[shifted_characters(key, date)[:shift_1].index(char)]
        when index % 4 == 1 then output << gen_characters[shifted_characters(key, date)[:shift_2].index(char)]
        when index % 4 == 2 then output << gen_characters[shifted_characters(key, date)[:shift_3].index(char)]
        when index % 4 == 3 then output << gen_characters[shifted_characters(key, date)[:shift_4].index(char)]
        end
      end
    return output
  end

end
