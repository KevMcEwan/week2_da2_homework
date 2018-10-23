require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Super Ted", [], "Living Teddy Bear")
    @fish1 = Fish.new("fish_1")
    @fish2 = Fish.new("fish_2")
    @fish3 = Fish.new("fish_3")
    @fish4 = Fish.new("fish_4")
    @fish5 = Fish.new("fish_5")
  end


  def test_bear_name
    expected = "Super Ted"
    actual = @bear.name
    assert_equal(expected, actual)
  end

  def test_bear_type
    expected = "Living Teddy Bear"
    actual = @bear.type
    assert_equal(expected, actual)
  end

  def test_stomach_contents
    expected = []
    actual = @bear.stomach
    assert_equal(expected, actual)
  end

  def test_add_to_bear_stomach
    expected = 1
    @bear.add_to_bear_stomach(@fish1)
    actual = @bear.stomach.count
    assert_equal(expected, actual)
  end

  def test_bear_can_roar
    expected = "Super Ted used ROAR! It was super effective!"
    actual = "#{@bear.name} used ROAR! It was super effective!"
    assert_equal(expected, actual)
  end


  def test_count_stomach_contents
    expected = 2
    @bear.add_to_bear_stomach(@fish1)
    @bear.add_to_bear_stomach(@fish2)
    actual = @bear.stomach.count
    assert_equal(expected, actual)
  end



end
