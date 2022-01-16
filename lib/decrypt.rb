require './generator'
require './shifts'

module Decrypt
  include Generator
  include Shifts


  def decrypt_message
    @decryption
  end

end
