class River

  attr_reader :name, :river_contents

  attr_writer :name, :river_contents

  def initialize(name, river_contents)
    @name = name
    @river_contents = river_contents
  end

  def lose_fish_to_bear(fish)
    @river_contents.delete(fish)
  end





end
