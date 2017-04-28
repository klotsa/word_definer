require('rspec')
require('./lib/words')

describe('words') do
  before() do
    Words.clear()
  end

  describe(".clear") do
    it "returns an empty array" do
      test_contact = Words.new({:first_name=>"Bill", :last_name=>"Gates", :job=>"billionaire", :company=>"the world"})
      test_contact.save()
      Words.clear()
      expect(Words.all()).to(eq([]))
    end
  end

  describe(".all") do
    it "returns all words" do
      test_contact = Words.new({:first_name=>"Bill", :last_name=>"Gates", :job=>"billionaire", :company=>"the world"})
      test_contact.save()
      expect(Words.all()).to(eq([test_contact]))
    end
  end

  describe("#save") do
    it "saves a contact to the class variable words" do
      test_contact = Words.new({:first_name=>"Bill", :last_name=>"Gates", :job=>"billionaire", :company=>"the world"})
      test_contact.save()
      expect(Words.all()).to(eq([test_contact]))
    end
  end

  describe("#first_name") do
    it "gives the name of the contact" do
      test_contact = Words.new({:first_name=>"Bill", :last_name=>"Gates", :job=>"billionaire", :company=>"the world"})
      expect(test_contact.first_name()).to(eq("Bill"))
    end
  end

  describe(".find") do
    it("returns a contact by its id number") do
      test_contact = Words.new({:first_name=>"Bill", :last_name=>"Gates", :job=>"billionaire", :company=>"the world"})
      test_contact.save()
      test_contact2 = Words.new({:first_name=>"Melinda", :last_name=>"Gates", :job=>"billionaire", :company=>"the world"})
      test_contact2.save()
      expect(Words.find(test_contact.id())).to(eq(test_contact))
    end
  end

  describe("#id") do
    it "returns the contact's id" do
      test_contact = Words.new({:first_name=>"Bill", :last_name=>"Gates", :job=>"billionaire", :company=>"the world"})
      expect(test_contact.id()).to(eq(1))
    end
  end
end


# require('rspec')
# require('word')
#
# describe('word') do
#   before() do
#     Words.clear()
#   end
# end
#
#   describe(".clear") do
#       it "returns an empty array" do
#         test_word = Words.new({:new_word=>"world"})
#         test_word.save()
#         Words.clear()
#         expect(Words.all()).to(eq([]))
#       end
#   end
#
#   describe(".all") do
#       it "returns all words" do
#         test_word = Words.new({:new_word=>"world"})
#         test_word.save()
#         expect(Words.all()).to(eq([test_word]))
#       end
#     end
#
#     describe("#save") do
#       it "saves a word to the class variable words" do
#         test_word = Words.new({:new_word=>"world"})
#         test_word.save()
#         expect(Words.all()).to(eq([test_word]))
#       end
#     end
#
#     describe(".find") do
#       it("returns a word by its id number") do
#         test_word = Words.new({:new_word=>"world"})
#         test_word.save()
#         test_contact2 = Words.new({:new_word=>"sea"})
#         test_contact2.save()
#         expect(Words.find(test_word.id())).to(eq(test_word))
#       end
#     end
#
#     describe("#id") do
#       it "returns the word's id" do
#         test_contact = Words.new({:new_word=>"world"})
#         expect(test_contact.id()).to(eq(1))
#       end
#     end
#   end
