class Santa
  attr_reader :name, :gender, :ethnicity, :age, :reindeer_ranking
  attr_accessor :name, :gender, :ethnicity, :age, :reindeer_ranking


     def initialize(name, gender, ethnicity)
        @name = name
        @gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
        @ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
        @age = rand(0..140)
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    end

    # def gender_selector(gender)
    #   @gender = @gender.sample
    # end


    def speak()
     "Ho, ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie_type)
      "That was a good #{cookie_type}!"
    end

    def about
      p "Name: #{@name}"
      p "Gender: #{@gender}"
      p "Ethnicity: #{@ethnicity} "
      p "Reindeer Ranking: #{@reindeer_ranking}"
      p "Age: #{@age} years old"
    end

    def celebrate_birthday(age)
      p @age + 1
      puts "Happy birthday #{@name}!!!"
    end

    def get_mad_at()
      p reindeer_ranking.rotate(1)
    end


#____GETTER METHODS____#
#     def name
#       @name
#     end

#     def gender
#       @gender
#     end

#     def ethnicity
#       @ethnicity
#     end

#     def age
#       @age
#     end

#     def reindeer_ranking
#       @reindeer_ranking
#     end

# #____SETTER METHODS____#

#     def name=(new_name)
#       @name = new_name
#     end

#     def gender=(new_gender)
#       @gender = new_gender
#     end

#     def age=(new_age)
#       @age = new_age
#     end


end



#____DRIVER CODE____#



kris_kringle = Santa.new("Kris Kringle", @gender , "Dominican")

p kris_kringle

p kris_kringle.speak()

p kris_kringle.eat_milk_and_cookies("snicker doodle")


 kris_kringle.gender = "female"

 kris_kringle.celebrate_birthday(@age)

 kris_kringle.get_mad_at