require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("John", 30)
    @person2 = Person.new("Frank", 50)
    @person3 = Person.new("Lisa", 28)
  end

  def test_name_of_person
    expected = "John"
    actual = @person1.name
    assert_equal(expected, actual)
  end

  def test_age_of_person
    expected = 50
    actual = @person2.age
    assert_equal(expected, actual)
  end



end
