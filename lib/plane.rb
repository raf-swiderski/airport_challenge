class Plane
    attr_reader :status

    def initialize
        @status = :in_flight
    end

    def take_off
        @status = :in_flight
    end

end