require("minitest/autorun")
require_relative("../person.rb")


class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("David", 39)
  end

  def test_name
    assert_equal("David", @person.name)
  end

  def test_age
    assert_equal(39, @person.age)
  end





end
