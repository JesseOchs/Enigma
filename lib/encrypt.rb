require './generator'
require './shifts'

module Encrypt
  include Generator
  include Shifts


  def encrypt_message(message, key, date)
    rotated_characters = shifted_characters(key, date)
    output = ""
      message.each_char.with_index { |char, index|
        if index % 4 == 0
          output << rotated_characters[0][character_swap(char)]
        elsif index % 4 == 1
          output << rotated_characters[1][character_swap(char)]
        elsif index % 4 == 2
          output << rotated_characters[2][character_swap(char)]
        elsif index % 4 == 3
          output << rotated_characters[3][character_swap(char)]
        end
        }
        return output
  end


  def character_swap(char)
      characters = gen_characters
      characters.index(char)
  end

end
