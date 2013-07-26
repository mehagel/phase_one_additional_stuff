class Deck

  attr_reader :deck

  def initialize
    @deck = []
  end

  def pick_card
    @deck.sample
  end

end

class Card

  attr_accessor :word, :defintion 
  
  def initialize
    @word = word
    @defintion = defintion
  end

end

class Parser

  def initialize(file)
    @file = file 
  end

  def load_file
    #code
    @deck << Card.new(#code)
  end


end

class Flashcard

  def intialize
    @flashcard_deck=Deck.new(#code) 
  end


  def play_game
    # Say welcome & message - Ask "play/exit/answer"
    # If play - pick_card
    check_answer


  end 

  def check_answer
    guess = us
    #Loop until they get right answer
      #With a limit for answers
    #Check answer from instance of Card 
    # If yes 
    play_game
    # If no - give another chance
  end


end




