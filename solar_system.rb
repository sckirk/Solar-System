class SolarSystem
    attr_accessor :planets

    def initialize
        @planets = []
    end

    def add_planet(planet)
        @planets << planet
    end

    def add_list_planets(list)
        @planets = @planets + list
    end

    def print_props
        @planets.each do |i|
            puts "#{ i.print_props }"
        end
    end
end
