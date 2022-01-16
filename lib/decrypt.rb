require './generator'
require './shifts'

module Decrypt
  include Generator
  include Shifts


  def decrypt_message(ciphertext, key, date)
      rotated_characters = shifted_characters(key, date)
      regular_chars = gen_characters
    output = ""
      ciphertext.each_char.with_index { |char, index|
        if index % 4 == 0
          output <<  regular_chars[rotated_characters[0].index(char)]
        elsif index % 4 == 1
          output << regular_chars[rotated_characters[1].index(char)]
        elsif index % 4 == 2
          output << regular_chars[rotated_characters[2].index(char)]
        elsif index % 4 == 3
          output << regular_chars[rotated_characters[3].index(char)]
        end
        }
        return output
  end

end
