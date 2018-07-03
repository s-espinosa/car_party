require './lib/engine'

class Car
  attr_reader :make,
              :model,
              :color,
              :odometer,
              :engine

  def initialize(make, model)
    @make = make
    @model = model
    @color = "white"
    @odometer = 0
    @engine   = Engine.new
  end

  def paint(color)
    @color = color
  end
end
