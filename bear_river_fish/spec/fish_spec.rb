require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("fish_1")
    @fish2 = Fish.new("fish_2")
    @fish3 = Fish.new("fish_3")
    @fish4 = Fish.new("fish_4")
    @fish5 = Fish.new("fish_5")
    fishes = [@fish1, @fish2, @fish3, @fish4, @fish5]
  end


  def test_fish_name
    expected = "fish_1"
    actual = @fish1.name
    assert_equal(expected, actual)
  end



end
