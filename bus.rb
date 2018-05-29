class Bus

  attr_reader(:route_number, :destination, :passengers)

  def initialize(route_number, destination, passengers = [])
    @route_number = route_number
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "Brum brum"
  end

  def number_of_passengers
    return @passengers.count
  end

  def pick_up(new_passenger)
    @passengers.push(new_passenger)
  end

  def drop_off(departing_passenger)
    @passengers.delete(departing_passenger)
  end

  def empty
    @passengers = []
  end

end
