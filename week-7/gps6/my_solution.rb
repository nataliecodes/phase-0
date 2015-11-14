# Virus Predictor

# I worked on this challenge with Celeen Rusk.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#
# We use require_relative to load a file with a path relative to the current file.
# require loads a file with a path location relative to where Ruby is installed.

require_relative 'state_data'

class VirusPredictor

# Initializes the VirusPredictor method with three variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# There are two methods to determine two different virus effects
# Call the predicted deaths method with 3 variables
# Call the speed of spread method with 2 variables

  def virus_effects
    predicted_deaths
    speed_of_spread
    # p population_density
    # p @population_density
  end

private

# Determines the # of predicted deaths by population density
# The # of predicted deaths is higher for denser states
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when 150..199
        number_of_deaths = (@population * 0.3)
      when 100..149
        number_of_deaths = (@population * 0.2)
      when 50..99
        number_of_deaths = (@population * 0.1)
      when 0..50
        number_of_deaths = (@population * 0.05)
      else
        number_of_deaths = (@population * 0.4)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

# Determines speed of spread by pop density
# Denser areas appear to have a slower spread speed
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
      when 0..49
        speed += 2.5
      when 50..99
        speed += 2
      when 100..149
        speed += 1.5
      when 150..199
        speed += 1
      else
        speed += 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# inializes a new instance of virus predictor for a specific state
# calls virus_effects on that instance

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

def stateinfo
  STATE_DATA.each do |k,v|
      VirusPredictor.new(k, v[:population_density], v[:population]).virus_effects
  end
end

stateinfo

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown
# in the state_data file?

# The outer hash has a string as a key and the inner hash has a symbol
# as a key. Using a symbol for the inner hash makes sense here because
# each key (both population and population_density) is used over and
# over many times. The program runs faster when symbols are used
# because it doesn't have to register a new string value over and
# over.

# What does require_relative do? How is it different from require?

# Require_relative to load a file with a path relative to the current
# file. It uses the current directory location as a starting point.
# Require loads a file with a path location relative to where Ruby is
# installed. This is often used for loading Ruby libraries.

# What are some ways to iterate through a hash?

# You can iterate through a hash with 'each,' which allows you to
# go through each key/value pair and do whatever you want to it.
# You can also use maps, which does basically the same thing as
# each. Collect iterates through the hash without a block, and
# will just return everything in it. Each_key or each_value goes
# through just the key or value, respectively, in a hash. There
# are a few other iterators, too, but I don't want to list them
# all.

# When refactoring virus_effects, what stood out to you about the
# variables, if anything?

# It was easy to see that the methods took the instance variables,
# while written in virus_effects, but harder for me to realize that
# I had to go back to the methods to see that they took local
# variables there. After I realized that the methods technically
# took different variables in the method definition and the method
# call in virus_effects, I then saw that the method didn't really
# need any arguments at all.

# What concept did you most solidify in this challenge?

# This challenge taught me most about what the above question
# asked about: how and why methods take arguments. It took me a
# while to get to the core of the answer to the virus_effects
# question. But once I got it, I think it did clear up those
# questions. I know how to read a method better now.