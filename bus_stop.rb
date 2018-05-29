class BusStop

attr_reader :name, :queue

  def initialize(name, queue = [])
    @name = name
    @queue = queue
  end

  def add_person_to_queue(new_person)
    @queue.push(new_person)
  end

  def empty_bus_stop
    @queue = []
  end




end
