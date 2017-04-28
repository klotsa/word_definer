require('rspec')
require('words')

describe('words') do
  before() do
    Words.clear()
  end

  describe(".clear") do
    it "returns an empty array" do
      test_word = Words.new({:word=>"ocean"})
      test_word.save()
      Words.clear()
      expect(Words.all()).to(eq([]))
    end
  end

  describe(".all") do
    it "returns all words" do
      test_word = Words.new({:word=>"ocean"})
      test_word.save()
      expect(Words.all()).to(eq([test_word]))
    end
  end

  describe("#save") do
    it "saves a word to the class variable" do
      test_word = Words.new({:word=>"ocean"})
      test_word.save()
      expect(Words.all()).to(eq([test_word]))
    end
  end

  describe(".find") do
   it("returns a word by its id number") do
     test_word = Words.new({:word=>"ocean"})
     test_word.save()
     test_word2 = Words.new({:word=>"mountain"})
     test_word2.save()
     expect(Words.find(test_word.id())).to(eq(test_word))
   end
 end

 describe("#id") do
   it "returns the word's id" do
     test_word = Words.new({:word=>"ocean"})
     expect(test_word.id()).to(eq(1))
   end
 end

end
