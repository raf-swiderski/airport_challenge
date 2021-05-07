require 'airport'
describe Airport do 

    before(:each) do
        @airport = Airport.new
        create_planes
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
        fill_up
        expect{@airport.land(@plane_5)}.to raise_error("The capacity at this airport is 4 planes")
    end

end