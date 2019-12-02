# frozen_string_literal: true

# This shiny class contains information about ship modules
class ShipModule
  attr_accessor :fuel_consumption

  def initialize(fuel_consumption)
    @fuel_consumption = fuel_consumption
  end

  def calculate_fuel_consumption
    (@fuel_consumption / 3).floor - 2
  end
end
