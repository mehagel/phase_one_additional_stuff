# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.
 
# You'll probably want to write other methods, but this 
# encapsulates the core Grandma logic

def deaf_grandma
  puts "HI SONNY"
  reply=gets.chomp
  exit= "I love ya, Grandma, but I've got to go."
  while reply!= exit
    if reply == reply.upcase
      puts "NO NOT SINCE 1983"
    else
      puts "HUH? SPEAK UP SONNY"
    end
    reply = gets.chomp
  end
end
 
# Run our method
deaf_grandma
