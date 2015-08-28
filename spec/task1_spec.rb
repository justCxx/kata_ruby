require_relative "../tasks/task1"

describe Task1 do
  describe ".solution_stack" do
    let(:long_valid_str) { "()" * 1000000 }
    let(:long_invalid_str) { "#{long_valid_str})" }

    it { expect(Task1.solution_stack("")).to be true }
    it { expect(Task1.solution_stack("()()()")).to be true }
    it { expect(Task1.solution_stack("()()(")).to be false }
    it { expect(Task1.solution_stack("()())")).to be false }
    it { expect(Task1.solution_stack("()()))(")).to be false }
    it { expect(Task1.solution_stack("(")).to be false }
    it { expect(Task1.solution_stack(")")).to be false }
    it { expect(Task1.solution_stack(")(")).to be false }
    it { expect(Task1.solution_stack(long_valid_str)).to be true }
    it { expect(Task1.solution_stack(long_invalid_str)).to be false }
  end

  describe ".solution_recursive" do
    it { expect(Task1.solution_recursive("")).to be true }
    it { expect(Task1.solution_recursive("()()()")).to be true }
    it { expect(Task1.solution_recursive("()()(")).to be false }
    it { expect(Task1.solution_recursive("()())")).to be false }
    it { expect(Task1.solution_recursive("()()))(")).to be false }
    it { expect(Task1.solution_recursive("(")).to be false }
    it { expect(Task1.solution_recursive(")")).to be false }
    it { expect(Task1.solution_recursive(")(")).to be false }
  end
end
