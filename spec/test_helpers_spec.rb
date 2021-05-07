def fill_up
    @airport.land(@plane_1)
    @airport.land(@plane_2)
    @airport.land(@plane_3)
    @airport.land(@plane_4)
end

def create_planes
    @plane_1 = Plane.new
    @plane_2 = Plane.new
    @plane_3 = Plane.new
    @plane_4 = Plane.new
    @plane_5 = Plane.new
end