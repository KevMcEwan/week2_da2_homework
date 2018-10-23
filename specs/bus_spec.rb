require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

class BusTest < Minitest::Test

  def setup
    @bus1 = Bus.new("22", "Ocean Terminal")
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

end