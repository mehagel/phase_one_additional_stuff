# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.
 
# You'll probably want to write other methods, but this 
# encapsulates the core Grandma logic
def deaf_grandma
  puts "Hi Sonny."
  input = gets.chomp
  
  until input == "I love ya, Grandma, but I've got to go."
    puts "Goodbye Sonny"
    if input == input.upcase
      puts "NO, NOT SINCE 1983!"
      input = gets.chomp
    else
      puts "HUH?! SPEAK UP, SONNY!"
      input = gets.chomp
    end
  end
end
 
# Run our method
deaf_grandma
