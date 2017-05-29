class Game
  attr_reader :secret_word
  attr_writer :secret_word
  attr_accessor :secret_word, :guess_limit


  def initialize(secret_word)
    @secret_word = secret_word
    @number_of_guesses = 0
    @guess_limit = guess_limit
  end

  def word
    @secret_word = secret_word
  end

  def guess_limit # must correspond to the word length
    guess_limit = secret_word.length * 2
  end


   def hide_word  #hiding word - tried GSUB, SUB, now replacing letters in word
      hidden_word = @secret_word
      replaced_letter = ""
      @secret_word.length.times do |hidden_word|
        replaced_letter += "_"
      end
      replaced_letter
    end


  def add_to_guess
    @number_of_guesses +=1
  end



end

puts "Player 1, enter a secret word for Player 2 to have a guess at"
word = gets.chomp
# #initialize game with word entered
game = Game.new(word)
p game
p game.hide_word


