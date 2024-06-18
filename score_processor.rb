class ScoreProcessor
  def initialize
    @scores = File.read('soccer.dat').each_line.to_a[3..-2]
  end

  def smallest_difference
    teams_with_score_diff = @scores.inject([]) do |acc, line|
      team, f, a = line.scan(/^\s+\d+\.\s+(\w+).+?(\d+)\s+\-\s+(\d+)/).flatten
      acc << [team, (f.to_i - a.to_i).abs] unless team.nil?
      acc
    end

    teams_with_score_diff.min_by(&:last).first
  end
end
