class Definition
  @@definitions = []

  define_method(:initialize) do |first, second, third|
    @first = first
    @second = second
    @third = third
    @id = @@definitions.length() + 1
  end

  define_method(:id) do
    @id
  end

  define_method(:first) do
    @first
  end

  define_method(:second) do
    @second
  end

  define_method(:third) do
    @third
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end


  define_singleton_method(:find) do |id|
    found_definition = nil
    @@definitions.each() do |definition|
      if definition.id() == id.to_i()
        found_definition = definition
      end
    end
    found_definition
  end
end
