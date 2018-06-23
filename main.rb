require 'yaml'
level_1_input = File.readlines './inputs/level_1_input.txt'
level_2_input = File.readlines './inputs/level_2_input.txt'
require './level_1'


# --------------------- LEVEL 1 -----------------------
calculator = Level_1.new(level_1_input)
puts "Level 1.1: #{calculator.calc_total}"
puts "Level 1.2: #{calculator.calc_total_with_interval}"
