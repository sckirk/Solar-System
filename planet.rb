class Planet
    attr_accessor :name, :color, :diameter_in_miles, :number_moons, :state, :rate_solar_rotation_in_earth_days, :distance_from_sun_in_miles

    def initialize(name, color, diameter_in_miles, number_moons, state, rate_solar_rotation_in_earth_days, distance_from_sun_in_miles)
        @name = name
        @color = color
        @diameter_in_miles = diameter_in_miles
        @number_moons = number_moons
        @state = state
        @rate_solar_rotation_in_earth_days = rate_solar_rotation_in_earth_days
        @distance_from_sun_in_miles = distance_from_sun_in_miles
    end

    def print_props
        puts "The planet #{ @name } is colored #{ @color }, is #{ @diameter_in_miles } miles in diameter, has #{ @number_moons } moon(s), exists in a #{ @state } state, rotates around the sun in #{ @rate_solar_rotation_in_earth_days } 'earth' days and is located #{ @distance_from_sun_in_miles } miles from the sun.\n"
    end

end


# TERMINAL TEST...

# suzannasmacbook:08.15_solar_system Suzannah$ irb -r ./planet.rb
# 2.3.1 :001 > earth = Planet.new("Earth", "blue and white", "7926", "1", "solid", "365", "92960000")
#  => #<Planet:0x007fd95090b880 @name="Earth", @color="blue and white", @diameter_in_miles="7926", @number_moons="1", @state="solid", @rate_solar_rotation_in_earth_days="365", @distance_from_sun_in_miles="92960000">
# 2.3.1 :002 > earth.color
#  => "blue and white"
# 2.3.1 :003 >
