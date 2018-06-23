class Level_2
  def initialize(input)
    @int_array = input
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
end
