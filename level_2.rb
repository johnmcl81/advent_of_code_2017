class Level_2
  def initialize(filename)
    @int_array = parse_input(filename)
  end

  def checksum
    sum = 0
    @int_array.each do |row|
      sum += row.max - row.min
    end
    sum
  end

  def checksum_abs_divides
    sum = 0
    @int_array.each do |row|
      row.sort!.reverse!
      row.each_with_index do |int, index|
        (index..row.size - 2).each do |i|
          division = int.to_f / row[i + 1]
          sum += division.to_i if (division % 1).zero?
        end
      end
    end
    sum
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
