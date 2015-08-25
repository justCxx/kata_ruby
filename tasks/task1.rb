class Task1
  def self.solution(s)
    s.chars.each_with_object([]) do |ch, stack|
      if ch == "("
        stack.push(ch)
      elsif ch == ")"
        if stack.last == "("
          stack.pop
        else
          return false
        end
      end
    end.empty?
  end
end
