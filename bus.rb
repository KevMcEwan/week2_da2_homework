class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def route_number
    return "22"
  end

  def destination
    return "Ocean Terminal"
  end

  def drive_method
    return "Brum brum"
  end

  def test_number_of_passengers
    return @passengers
  end

  def add_person_to_passengers(passenger)
    @passengers << passenger
  end

  def remove_person_from_passengers(passenger)
    @passengers.delete(passenger)
  end


end
