require_relative 'plane'

class Airport

    attr_reader :planes

    MAXIUMUM_PLANES = 4

    def initialize
        @planes = []
    end

    def plane_count
        @planes.count
    end 

    def land(plane)
        raise "The capacity at this airport is 4 planes" if @planes.count() == MAXIUMUM_PLANES
        @planes.push(plane)
    end

    def take_off(plane)
        plane.take_off
    end
end