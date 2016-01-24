# Virus Predictor

# I worked on this challenge with John Seo].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# Takes information from another file and links it to the present file. The "require" method connects files via an absolute path, while "require_relative" links the files on a relative path.

require_relative 'state_data'

=begin
Initial Solution:

class VirusPredictor
# Initialize runs every time we create a new instance of this class, including all the given parameters and setting the values.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
# returning the output of the methods below "private"
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
# This is a built-in Ruby method whereby any method defined below it cannot be called outside of the class.
  private  

# Takes 3 arguments population_density, population, and state. The population_density instance variable is used to conditional flow control.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
# First clause that is printed to the console
   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

   end
# Determines speed of spread of virus based on the state's population density. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

# Second clause that is printed to console    
    puts " and will spread across the state in #{speed} months.\n\n"

  end
end
=end

# Refactored Sollution:
class VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths_and_speed_of_spread
  end
  
  private  

  def predicted_deaths_and_speed_of_spread
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end
   print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end
end

#=====================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, state_data| 
  state = VirusPredictor.new(state, state_data[:population_density], state_data[:population])
  state.virus_effects
  end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=====================================================================
# Reflection:
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The primary difference between the two different hash syntaxes showin in the state_data file is the syntax. In one case, the key is assigned to the value using "=>". On the other hand, the second syntax simply connects the key and value using a colon (":") at the end of the key.

# What does require_relative do? How is it different from require?
# require_relative links files along a relative path  (similar to linking HTML-CSS files), while require links files along an absolute path.

# What are some ways to iterate through a hash?
# hash.each do |key, value|
# hash.map do |key, value|

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# When refactoring virus_effects, the arguments of "predicted_deaths" and "speed_of_spread" were the instance variables previously declared in the "initialize" statement. Since the instance variables were already created, they could therefore be accessed by methods later on in the program and didn't need to be referred to again as they had been in original "virus_effects" method.

# What concept did you most solidify in this challenge?
# My understanding of how to iterate over a hash is definitely improved after completing this challenge. I have a much better grasp of the syntax of hash iteration and how to access information in a hash via iteration.