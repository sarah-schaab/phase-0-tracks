# module Shout

#     def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#     def self.yelling_happily(words)
#     words + "!!!" + " :D"
#   end
# end

module Shout

  def yelling_angrily(words)
    words.upcase + "!!!" + ":("
  end

  def yelling_happily(words)
    words.upcase + "!!!" + ":D"
  end

end

class Dad_at_baseballgame
  include Shout
end

class Mom_at_baseballgame
  include Shout
end


#_______DRIVER CODE______#

# p Shout.yell_angrily("I'm angry!")
# p Shout.yelling_happily("I'm happy!")

dad = Dad_at_baseballgame.new
p dad.yelling_angrily("Don't drop the ball")

mom = Mom_at_baseballgame.new
p mom.yelling_happily("you got this")



#_____SELF PRACTICE____#
# module Actions
#   def climb_up(object)
#     p "IT'S CLIMBING UP THE #{object}"
#   end


#   def swim(object)
#     p "IT'S SWIMMING IN THE #{object}"
#   end
# end

# class Bear
#   include Actions
# end

# class Rockclimber
#   include Actions
# end




#___SELF PRACTICE___#
# person = Rockclimber.new
# person.swim("lake")
# bear = Bear.new
# bear.climb_up("house")

