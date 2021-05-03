require 'airport'
describe Airport do 

    before(:each) do
        @airport = Airport.new
        @plane_1 = Plane.new
    end

    it 'can land a plane' do
        @airport.land('testplane')
        expect(@airport.planes).to eq ['testplane']
    end

    it 'can instruct a plane to take off from an airport, and can confirm that it is no longer in the airport' do
        @airport.take_off(@plane_1)
        expect(@plane_1.status).to eq :in_flight
    end

    it 'can prevent landing when airport is full' do

    end

end