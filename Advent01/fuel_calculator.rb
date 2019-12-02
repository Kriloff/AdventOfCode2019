# frozen_string_literal: true

require_relative 'ship_module'

module_file = File.open('module_fuel_consumptions.yml')

total_fuel_value = []

module_file.each_line do |line|
  ship_module = ShipModule.new(line.to_f)
  total_fuel_value << ship_module.calculate_fuel_consumption
end

puts "Total fuel consumption is: #{total_fuel_value.sum}"
