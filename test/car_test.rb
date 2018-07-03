require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'

class CarTest < Minitest::Test
  def test_it_exists
    car = Car.new("Toyota", "Camry")

    assert_instance_of Car, car
  end

  def test_it_has_a_make
    car = Car.new("Toyota", "Camry")

    assert_equal "Toyota", car.make
  end

  def test_it_has_a_model
    car = Car.new("Toyota", "Camry")

    assert_equal "Camry", car.model
  end

  def test_it_has_a_color
    car = Car.new("Toyota", "Camry")

    assert_equal "white", car.color
  end

  def test_it_can_paint
    car = Car.new("Toyota", "Camry")

    assert_equal "white", car.color
    car.paint("blue")

    assert_equal "blue", car.color
  end

  def test_odometer_starts_at_0
    car = Car.new("Toyota", "Camry")

    assert_equal 0, car.odometer
  end
end
