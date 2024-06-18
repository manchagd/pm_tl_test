class TemperatureProcessor
  def initialize
    @day_lines = File.read('w_data.dat').each_line.to_a[6..-3]
  end

  def smallest_spread
    days_with_spread = @day_lines.map do |line|
      day, max_t, min_t = line.scan(/^\s*(\d+)\s*(\d+(?:\.\d+)?)\*?\s*(\d+(?:\.\d+)?)\*?/).flatten
      [day.to_i, (max_t.to_f - min_t.to_f).abs]
    end

    days_with_spread.min_by(&:last).first
  end
end
