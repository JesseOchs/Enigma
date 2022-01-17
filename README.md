# Enigma

Welcome to my Enigma project. This project uses the Command Line Interface to Encrypt and Decrypt messages.


## Operating Enigma

1. Add a message into the `message.txt` either directly or through the command line interface by typing `echo 'your message here' >> ./lib/message.txt` into your command line.

2. To encrypt the message type `ruby ./lib/encrypt_runner.rb message.txt encrypted.txt` into your command line. This will encrypt the message and store it to the `encrypted.txt` file. You will also see a message in your terminal with the 'key' and 'date', these will be used to decrypt the message.

3. To decrypt the message type `ruby ./lib/decrypt_runner.rb encrypted.txt decrypted.txt 'key' 'date'` into your command line using the 'key' and the 'date' from the encrypt message as the 3rd and 4th argument. This will read the encrypted message in the `encrypted.txt` file and write the decrypted message to the `decrypted.txt` file.    

4. To read the `message.txt`, `encrypted.txt` or `decrypted.txt` files, run `cat 'file path'` in your command line where the file path is the path to the file you want to read.


# Self_Assessment

## Functionality

[X] Enigma Class with encrypt and decrypt methods successfully implemented.

[X] Encrypt and Decrypt CLI successfully implemented.

### Thoughts

Following the project requirements all things were implemented correctly. I would prefer to move the text files to another directory outside of the Lib directory for better organization, and will probably do this on my own after the project eval.

## Object Oriented Programming

[X] Project is broken into logical components - appropriately encapsulated.

[X] No classes are unreasonably small or large.

[X] Classes do not contain knowledge/info/behavior that they shouldn't know about.

[X] Single responsibilities can be articulated.

### Thoughts

I broke the project down into one class and four modules. Each module includes methods that only pertain to what the module is designed to do. With only one class there is no issue of classes breaking the law of Demeter. I also focused on keeping my code DRY and made sure to not repeat code.

## Ruby Conventions and Mechanics

[X] Code is properly indented, spaced, and concise.

[X] All class, method, variable, and file names follow convention.

[X] Most of the enumerables and data structures chosen are the most efficient.

[X] Implemented multiple hashes in a logical manner.

### Thoughts

In order to follow Turing's rules for keeping methods below 12 lines, I used case statements within the `encrypt.rb` and `decrypt.rb` modules. I personally think this makes the code harder to read, but using an `if/else` statement makes the method lengthy. I also plan on going back through and refactoring my `shifted_characters` method in the `shift` module into a hash. For now it works well and runs as intended, but after completing the project it occurred to me that this information should be a hash.

## Test Driven Development

[X] Every class has a spec file and every method within a class is completely tested to verify the expected behavior.

[X] Module methods are tested within the Class spec file that they apply to.

[X] Edge cases are addressed in testing.

[X] Tests were written first before implementation of code.

[X] Simplecov shows coverage over 99% coverage.

### Thoughts

Testing for an expected output of a random number seems impossible at my skill level. Testing that it is an `Integer` and that it's size was as intended felt like a copout, but it worked to get the coverage. Some tests had to be changed along the way as the project was built out and some had to be added as new ideas emerged and were implemented.

## Version Control
[X] Over 30 commits.

[X] Uses logical pull request workflow.

### Thoughts

This was the first project where I did not run into any Github issues, and that was a nice change of pace. Breaking the rule about not merging your own pull requests also felt good.
