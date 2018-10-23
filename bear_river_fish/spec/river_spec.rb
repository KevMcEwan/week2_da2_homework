require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative("../fish")

class RiverTest < MiniTest::Test

    def setup
      @fish1 = Fish.new("fish_1")
      @fish2 = Fish.new("fish_2")
      @fish3 = Fish.new("fish_3")
      @fish4 = Fish.new("fish_4")
      @fish5 = Fish.new("fish_5")

      @fishes = [@fish1, @fish2, @fish3, @fish4, @fish5]

      @nile = River.new("The Nile", @fishes)
    end


    def test_river_name
      expected = "The Nile"
      actual = @nile.name
      assert_equal(expected, actual)
    end

    def test_river_contents
      expected = @fishes
      actual = @nile.river_contents
      assert_equal(expected, actual)
    end

    def test_lose_fish_to_bear
      expected = 4
      @nile.lose_fish_to_bear(@fish1)
      actual = @fishes.count
      assert_equal(expected, actual)
    end

    def test_count_fish_in_river
      expected = 3
      @nile.lose_fish_to_bear(@fish1)
      @nile.lose_fish_to_bear(@fish2)
      actual = @fishes.count
      assert_equal(expected, actual)
    end


  end
