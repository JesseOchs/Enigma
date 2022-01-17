require './generator'
require './shifts'

module Encrypt
  include Generator
  include Shifts

  def encrypt_message(message, key, date)
      rotated_characters = shifted_characters(key, date)
      output = ""
      message.each_char.with_index do |char, index|
        case
        when gen_characters.include?(char) == false then output << char
        when index % 4 == 0 then output << rotated_characters[0][gen_characters.index(char)]
        when index % 4 == 1 then output << rotated_characters[1][gen_characters.index(char)]
        when index % 4 == 2 then output << rotated_characters[2][gen_characters.index(char)]
        when index % 4 == 3 then output << rotated_characters[3][gen_characters.index(char)]
        end
      end
    return output
  end

end
