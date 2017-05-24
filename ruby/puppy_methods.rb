#____CLASS & METHODS____#
class Puppy
  def initialize()
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times {p "woof!"}
  end

  def roll_over
    p "**ROLLS OVER**"
  end

  def dog_years(age)
    p age * 7
  end

  def sit()
    p "**SITS DOWN**"
  end
end

class Cats

  def initialize()
    puts "Initializing new cat instance ..."
  end

  def speak
    p "MEOW!"
  end

  def walk_away()
    puts "**WALKS AWAY**"
  end

end

#____code____#


spot = Puppy.new

#____DRIVER CODE____#
spot.fetch("toy")
spot.speak(3)
spot.roll_over
spot.dog_years(7)
spot.sit

#____CATS SECTION____#
cats = []
50.times {cats << kitty = Cats.new}
 cats.each do |cat|
  cat.speak
  cat.walk_away
end

