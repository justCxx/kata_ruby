# See task description in README.md
class Task1
  def self.solution_stack(s)
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

  def self.solution_recursive(str)
    check_iter = -> (s, acc) do
      if acc < 0
        false
      elsif s.empty?
        acc == 0
      elsif s[0] == "("
        return check_iter.call(s[1..-1], acc + 1)
      elsif s[0] == ")"
        return check_iter.call(s[1..-1], acc - 1)
      else
        return check_iter.call(s[1..-1], acc)
      end
    end
    check_iter.call(str, 0)
  end
end
