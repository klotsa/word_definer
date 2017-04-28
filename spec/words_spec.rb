require('rspec')
require('words')

describe('words') do
  before() do
    Words.clear()
  end

  describe(".clear") do
    it "returns an empty array" do
      test_word = Words.new({:word=>"word"})
      test_word.save()
      Words.clear()
      expect(Words.all()).to(eq([]))
    end
  end

end
