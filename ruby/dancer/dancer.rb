class Dancer
  attr_reader
  attr_accessor :name, :age, :card
  def initialize(name, age)
    @name = name
    @age = age
    @card = []
  end

  def pirouette
    p"*twirls*"
  end

  def bow
    p "*bows*"
  end

  def age
   p @age
  end

  def card
    @card
  end

  def queue_dance_with(name)
    @card << name
  end

  def begin_next_dance
    p "Now dancing with #{card(0)}"
    @card.delete_at(0)
    @card

  end



end

