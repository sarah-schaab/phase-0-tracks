=begin
CLASS / SPECIES ------------------------
Puppy

CHARACTERISTICS ----------------
Fur length: varies
Friendly: yes
Playful: yes
Name: varies
Color: varies

BEHAVIOR -----------------------
sleep
eat
play
=end


class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    n = 0
    until n == number
      n += 1
      p "WOOF!"
    end
  end

  def roll_over()
    "**ROLLS OVER**"
  end

  def dog_years(human_years)
    dog_age = 7 * human_years
  end

  def sit()
     "**SITS DOWN**"
  end
end



toy = "bone"
sprout = Puppy.new
p sprout.fetch(toy)
p sprout.speak(3)
p sprout.dog_years(8)
p sprout.sit()
p sprout.roll_over