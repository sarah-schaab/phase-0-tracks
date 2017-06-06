# Virus Predictor

# I worked on this challenge [by myself, with: Regina D ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Allows you to load a file or use a file in the file you're working in.  This is a simpler way than writing all of the data you might need in the file with code.
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #creates a new instance of the Virus predictor class.  Stores the name of the state, the population, and the population density so they can be accessed throughout.

  def virus_effects
    predicted_deaths(STATE_DATA)
    speed_of_spread(STATE_DATA)
  end
  #calls the methods predicted_deaths and speed_of_spread with the arguments needed for each method.

  private

  def predicted_deaths(number_of_deaths)
    case number_of_deaths
    when @population_density >= 200 then (@population * 0.4).floor
    when @population_density >= 150 then (@population * 0.3).floor
    when @population_density >= 100 then (@population * 0.2).floor
    when @population_density  >= 50 then (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

  # def predicted_deaths(state_info)
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #Uses the population density to calculate the number of deaths.  The equation creates a new value and prints the state and the number of predicted deaths in each state.

  def speed_of_spread(speed)
    speed = 0.0
    case speed
    when @population_density >= 200 then speed += 0.5
    when @population_density >= 150 then speed += 1
    when @population_density >= 100 then speed += 1.5
    when @population_density >= 50 then speed += 2
    else
      speed += 2.5
    end

  # def speed_of_spread(state_info) #in months
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality.
  #   speed = 0.0

  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else
  #     speed += 2.5
  #   end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
#depending on the population density, it assigns a speed value, then prints how fast the virus will spread.
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# STATE_DATA.each do |state, value|
#   state = VirusPredictor.new(state, value[:population_density], value[:population])
#   state.virus_effects
# end
#=======================================================================
# Reflection Section