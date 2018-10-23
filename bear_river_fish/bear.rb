class Bear

  attr_reader :name, :stomach, :type

  def initialize(name, stomach, type)
    @name = name
    @stomach = stomach
    @type = type
  end

  def add_to_bear_stomach(fish)
    @stomach << fish
  end

  # def bear_can_roar

end
