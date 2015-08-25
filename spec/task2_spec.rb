require_relative "../tasks/task2"

describe Task2 do
  describe ".solution" do
    let(:long_valid_str) { "aabbc" * 500000 }
    let(:long_invalid_str) { "#{long_valid_str}de" }

    it { expect(Task2.solution("")).to be true }
    it { expect(Task2.solution("dooernedrn")).to be true }
    it { expect(Task2.solution("aabcba")).to be false }
    it { expect(Task2.solution("aabbccd")).to be true }
    it { expect(Task2.solution("aabbccde")).to be false }
    it { expect(Task2.solution(long_valid_str)).to be true }
    it { expect(Task2.solution(long_invalid_str)).to be false }
  end
end
