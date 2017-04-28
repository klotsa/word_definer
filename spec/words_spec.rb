require('rspec')
require('word')

describe('Word') do
  before() do
    Word.clear()
  end

  describe(".clear") do
    it "returns an empty array" do
      test_word = Word.new({:word=>"ocean"})
      test_word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".all") do
    it "returns all words" do
      test_word = Word.new({:word=>"ocean"})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe("#save") do
    it "saves a word to the class variable" do
      test_word = Word.new({:word=>"ocean"})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".find") do
   it("returns a word by its id number") do
     test_word = Word.new({:word=>"ocean"})
     test_word.save()
     test_word2 = Word.new({:word=>"mountain"})
     test_word2.save()
     expect(Word.find(test_word.id())).to(eq(test_word))
   end
 end

 describe("#id") do
   it "returns the word's id" do
     test_word = Word.new({:word=>"ocean"})
     expect(test_word.id()).to(eq(1))
   end
 end

end
