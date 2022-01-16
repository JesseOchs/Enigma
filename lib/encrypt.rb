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
        when index % 4 == 0 then output << rotated_characters[0][character_swap(char)]
        when index % 4 == 1 then output << rotated_characters[1][character_swap(char)]
        when index % 4 == 2 then output << rotated_characters[2][character_swap(char)]
        when index % 4 == 3 then output << rotated_characters[3][character_swap(char)]
        end
      end
    return output
  end

  def character_swap(char)
      characters = gen_characters
      characters.index(char)
  end

end
