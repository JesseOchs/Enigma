require './generator'
require './shifts'

module Decrypt
  include Generator
  include Shifts

  def decrypt_message(ciphertext, key, date)
      rotated_characters = shifted_characters(key, date)
      output = ""
      ciphertext.each_char.with_index do |char, index|
        case
        when index % 4 == 0 then output << gen_characters[rotated_characters[0].index(char)]
        when index % 4 == 1 then output << gen_characters[rotated_characters[1].index(char)]
        when index % 4 == 2 then output << gen_characters[rotated_characters[2].index(char)]
        when index % 4 == 3 then output << gen_characters[rotated_characters[3].index(char)]
        end
      end
    return output
  end

end
