# See task description in README.md
class Task1
  def self.solution(str)
    0 == str.chars.inject(0) do |counter, ch|
      if counter < 0
        counter
        break
      else
        case ch
        when "(" then counter + 1
        when ")" then counter - 1
        else counter
        end
      end
    end
  end
end
