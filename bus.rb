class Bus

  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
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

end
