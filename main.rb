require './level_1'
require './level_2'

class AdventOfCode

  def level_1
    level_1_input = parse_input("level_1_input.txt")

    calculator = Level_1.new(level_1_input)
    puts "Level 1.1: #{calculator.calc_total}"
    puts "Level 1.2: #{calculator.calc_total_with_interval}"
  end

  def level_2
    level_2_input = parse_input("level_2_input.txt")

    calculator = Level_2.new(level_2_input)
    puts "Level 2.1: #{calculator.checksum}"
    puts "Level 2.2: #{calculator.checksum_abs_divides}"
  end

  private

  def parse_input(filename)
    parsed_input = []
    File.readlines("./inputs/#{filename}").each do |line|
      parsed_input << line.split(' ').map(&:to_i)
    end
    parsed_input
  end

end

AOC = AdventOfCode.new
AOC.level_1
AOC.level_2
