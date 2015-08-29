# See task description in README.md
class Task3
  def self.solution(array)
    (0..array.size - 3).each_with_object(array.sort) do |i, a|
      return true if a[i] + a[i + 1] > a[i + 2]
    end
    false
  end
end
