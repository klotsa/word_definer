class Words
attr_reader(:word, :id, :definition1, :definition2)
  @@words = []

  define_method(:initialize) do |attributes|
  #  @word = attributes.fetch("word")
    @id = @@words.length.+(1)
    @definitions = []
  end

  # define_method(:add_email_address) do |email_address|
  #     @emails.push(email_address)
  #   end

    define_singleton_method(:clear) do
      @@words = []
    end

    define_singleton_method(:all) do
      @@words
    end

    define_method(:save) do
      @@words.push(self)
    end

    define_singleton_method(:find) do |id|
      result = []
      @@words.each() do |word|
        if word.id() == id
          result = word
        end
      end
      result
    end
  end
