# See task description in README.md
class Task2
  def self.solution(s)
    ch_map = s.chars.each_with_object({}) { |ch, m| m[ch] = m.fetch(ch, 0) + 1 }
    ch_map.values.count { |el| el % 2 > 0 } <= 1
  end
end
