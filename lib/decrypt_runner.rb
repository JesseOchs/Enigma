require_relative './enigma'

enigma= Enigma.new
date = enigma.gen_date

file = File.open(ARGV[0], 'r')
encryted_message = file.read.chomp
file.close

decrypt_message = enigma.decrypt(encryted_message, ARGV[2], ARGV[3])

write_file = File.open(ARGV[1], 'w')
write_file.write(decrypt_message[:decryption])
write_file.close

p "Created '#{ARGV[1]}' with the key '#{ARGV[2]}' and date #{ARGV[3]}"
