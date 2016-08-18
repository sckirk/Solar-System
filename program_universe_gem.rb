require_relative 'solar_system'
require_relative 'planet'

require 'terminal-table'

our_system = SolarSystem.new

mercury = Planet.new("Mercury", "gray", "3031", "0", "solid", "88", "36000000")
venus = Planet.new("Venus", "pale yellow", "7521", "0", "solid", "224", "67000000")
earth = Planet.new("Earth", "blue and white", "7926", "1", "solid", "365", "92960000")
mars = Planet.new("Mars", "reddish brown", "4222", "2", "solid", "687", "141700000")
jupiter = Planet.new("Jupiter", "orange and white", "88846", "66", "gaseous", "4329", "483500000")
saturn = Planet.new("Saturn", "pale gold", "74900", "62", "gaseous", "10585", "888750000")
uranus = Planet.new("Uranus", "pale blue", "31763", "27", "solid", "30660", "1783744300")
neptune = Planet.new("Neptune", "pale blue", "30779", "13", "solid", "60152", "2797770000")

planet_list = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]

our_system.add_list_planets(planet_list)

# ENHANCEMENT (the last one in wave 1--the first two are incorporated into my planet class) asking user to select which planet they'd like to learn about...

table = Terminal::Table.new
table.title = "Which planet do you\nwant to learn about?"
table.headings = ['Type...', 'To learn...']
rows = []
rows << [1, "Mercury"]
rows << [2, "Venus"]
rows << [3, "Earth"]
rows << [4, "Mars"]
rows << [5, "Jupiter"]
rows << [6, "Saturn"]
rows << [7, "Uranus"]
rows << [8, "Neptune"]
rows << [9, "exit program"]
table.rows = rows
table.style = {:width => 32}

puts table

choice = gets.chomp.to_i
choice = choice - 1 #to get these numbers to "match up" to the numbers in the planet list array...
while true
    if choice == 8
        break
    else
        puts "Excellent, here's more information about the planet you selected:"
        planet_list[choice].print_props
        puts "\n Please make your next choice:"
        puts table
        choice = gets.chomp.to_i
        choice = choice - 1
    end
end

puts "That was fun! Now here are details on all of the planets currently in our database:"
our_system.print_props

# This worked, and Kelly helped me see how to do this as an array by creating a new method in my solar system class that will add in a list of planets...
# our_system.add_planet(mercury)
# our_system.add_planet(venus)
# our_system.add_planet(earth)
# our_system.add_planet(mars)
# our_system.add_planet(jupiter)
# our_system.add_planet(saturn)
# our_system.add_planet(uranus)
# our_system.add_planet(neptune)
