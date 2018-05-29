require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal", [])
    @bus2 = Bus.new(38, "Hackney Central", ["a", "b", "c"])
    @david = Person.new("David", 39)
  end

  def test_route_number
    assert_equal(22, @bus.route_number())
  end

  def test_destination
    assert_equal("Ocean Terminal", @bus.destination())
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_passengers
    assert_equal([], @bus.passengers)
  end

  def test_number_of_passengers__0
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_number_of_passengers__bus_2
    assert_equal(3, @bus2.number_of_passengers)
  end

  def test_pick_up
    @bus2.pick_up(@david)
    assert_equal(4, @bus2.number_of_passengers)
  end

  def test_pick_up_by_name
    @bus2.pick_up(@david)
    assert_equal(true, @bus2.passengers.include?(@david))
  end

  def test_drop_off
    @bus2.drop_off("b")
    assert_equal(2, @bus2.number_of_passengers)
  end

  def test_empty
    @bus2.empty
    assert_equal(0, @bus2.number_of_passengers)
  end

end
