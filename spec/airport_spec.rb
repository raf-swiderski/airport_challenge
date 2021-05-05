require 'airport'
describe Airport do 

    before(:each) do
        @airport = Airport.new
        @plane_1 = Plane.new
        @plane_2 = Plane.new
        @plane_3 = Plane.new
        @plane_4 = Plane.new
        @plane_5 = Plane.new
    end

    it 'can land a plane' do
        @airport.land(@plane_1)
        expect(@airport.planes).to eq [@plane_1]
    end

    it 'can instruct a plane to take off from an airport, and can confirm that it is no longer in the airport' do
        @airport.take_off(@plane_1)
        expect(@plane_1.status).to eq :in_flight
    end

    it 'can prevent landing when airport is full' do
        @airport.land(@plane_1)
        @airport.land(@plane_2)
        @airport.land(@plane_3)
        @airport.land(@plane_4)
        expect{@airport.land(@plane_5)}.to raise_error("The capacity at this airport is 4 planes")
    end

end