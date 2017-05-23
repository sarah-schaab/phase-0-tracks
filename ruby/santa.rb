class Santa #this should be capitalized first letter
     def initialize(name, gender, ethnicity)
        @name = name
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

      end


    def speak()
     "Ho, ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie_type)
      "That was a good #{cookie_type}!"
    end

    def about
      p "name: #{@name}"
    end


end



#____DRIVER CODE____#

kris_kringle = Santa.new("Kris Kringle")
p kris_kringle
p kris_kringle.speak()
p kris_kringle.eat_milk_and_cookies("snicker doodle")
 kris_kringle.about