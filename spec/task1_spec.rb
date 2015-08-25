require_relative "../tasks/task1"

describe Task1 do
  describe ".solution" do
    let(:long_valid_str) { "()" * 1000000 }
    let(:long_invalid_str) { "#{long_valid_str})" }

    it { expect(Task1.solution("")).to be true }
    it { expect(Task1.solution("()()()")).to be true }
    it { expect(Task1.solution("()()(")).to be false }
    it { expect(Task1.solution("()())")).to be false }
    it { expect(Task1.solution("()()))(")).to be false }
    it { expect(Task1.solution("(")).to be false }
    it { expect(Task1.solution(")")).to be false }
    it { expect(Task1.solution(")(")).to be false }
    it { expect(Task1.solution(long_valid_str)).to be true }
    it { expect(Task1.solution(long_invalid_str)).to be false }
  end
end
