class Level_1
  def initialize(input)
    @int_array = input.to_s.scan(/\d/).map { |i| i.to_i }
  end

  def calc_total
    total = 0
    @int_array.each_with_index do |int, index|
      if index == @int_array.size - 1 && @int_array[index] == @int_array[0] ||
          @int_array[index] == @int_array[index + 1]
        total += int
      end
    end
    total
  end

  def calc_total_with_interval
    total = 0
    interval = @int_array.size / 2
    @int_array.each_with_index do |int, index|
      interval_offset = index - interval
      match_index = interval_offset < 0 ? interval_offset + @int_array.size : interval_offset
      if @int_array[match_index] == @int_array[index]
        total += int
      end
    end
    total
  end

end
