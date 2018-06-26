require './level_1'
require './level_2'

class AdventOfCode

  def level_1
    calculator = Level_1.new("level_1_input.txt")
    puts "Level 1.1: #{calculator.calc_total}"
    puts "Level 1.2: #{calculator.calc_total_with_interval}"
  end

  def level_2
    calculator = Level_2.new("level_2_input.txt")
    puts "Level 2.1: #{calculator.checksum}"
    puts "Level 2.2: #{calculator.checksum_abs_divides}"
  end
end

AOC = AdventOfCode.new
AOC.level_1
AOC.level_2
