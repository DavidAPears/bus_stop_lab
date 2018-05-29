require("minitest/autorun")
require_relative("../bus_stop.rb")
require_relative("../person.rb")
require_relative("../bus.rb")

class BusStopTest < MiniTest::Test

  def setup
    @busstop1 = BusStop.new("Edinburgh Central", [])
    @busstop2 = BusStop.new("Leith", ["Fred", "Sally", "Thomas"])
    @bus2 = Bus.new(38, "Hackney Central", ["a", "b", "c"])
    @edward = Person.new("Edward", 40)
  end

  def test_bus_stop_name
    assert_equal("Edinburgh Central", @busstop1.name)
  end

  def test_bus_stop_queue
    assert_equal(0, @busstop1.queue.count)
  end

  def test_add_person_to_queue
    @busstop1.add_person_to_queue(@edward)
    assert_equal(1, @busstop1.queue.count)
  end

  def test_pick_up_from_stop
    @bus2.pick_up_from_stop(@busstop2)
    assert_equal(6, @bus2.passengers.count)
    assert_equal(0, @busstop2.queue.count)
  end


end
