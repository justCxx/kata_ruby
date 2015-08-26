require_relative "../tasks/task3"

describe Task3 do
  describe ".solution" do
    it { expect(Task3.solution([])).to be false }

    it { expect(Task3.solution([1, 1, 1])).to be true }
    it { expect(Task3.solution([0, 0, 0])).to be false }
    it { expect(Task3.solution([0, 0, 1])).to be false }
    it { expect(Task3.solution([0, 2, 1])).to be false }

    it { expect(Task3.solution([10, 50, 5, 1])).to be false }
    it { expect(Task3.solution([10, 2, 5, 1, 8, 20])).to be true }

    it { expect(Task3.solution([-1, 1, 1])).to be false }
    it { expect(Task3.solution([-1, 0, 1])).to be false }
  end
end
