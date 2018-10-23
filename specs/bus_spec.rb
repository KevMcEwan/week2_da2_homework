require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < Minitest::Test

  def setup
    @bus1 = Bus.new("22", "Ocean Terminal",[])
    @person1 = Person.new("Kevin", 36)
    @person2 = Person.new("Bill", 40)

  end


  def test_route_number
    expected = "22"
    actual = @bus1.route_number
    assert_equal(expected, actual)
  end

  def test_destination
    expected = "Ocean Terminal"
    actual = @bus1.destination
    assert_equal(expected, actual)
  end

  def test_drive_method
    expected = "Brum brum"
    actual = @bus1.drive_method
    assert_equal(expected, actual)
  end

  def test_number_of_passengers
    expected = []
    actual = @bus1.passengers
    assert_equal(expected, actual)
  end

  def test_add_person_to_passengers
    expected = 1
    @bus1.add_person_to_passengers(@person1)
    actual = @bus1.passengers.count
    assert_equal(expected, actual)
  end

  def test_remove_person_from_passengers
    expected = 0
    @bus1.remove_person_from_passengers(@person1)
    actual = @bus1.passengers.count
    assert_equal(expected, actual)
  end 

end
