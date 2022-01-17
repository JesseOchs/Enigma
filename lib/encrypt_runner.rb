require './enigma'

enigma= Enigma.new
key = enigma.gen_key
date = enigma.gen_date

file = File.open(ARGV[0], 'r')
message = file.read.chomp
file.close

encrypt_message = enigma.encrypt(message, key, date)

write_file = File.open(ARGV[1], 'w')
write_file.write(encrypt_message[:encryption])
write_file.close

p "Created '#{ARGV[1]}' with the key #{key} and date #{date}."
