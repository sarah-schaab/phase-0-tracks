module Shout

    def self.yell_angrily(words)
    words + "!!!" + " :("
  end

    def self.yelling_happily(words)
    words + "!!!" + " :D"
  end
end




#_______DRIVER CODE______#

p Shout.yell_angrily("I'm angry!")
p Shout.yelling_happily("I'm happy!")

