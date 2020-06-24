class HiddenWord

    attr_reader(:word, :display)

    def initialize(word)
        @word = word
        @display = "*" * word.length
    end

    def has_letter?(letter)
        return @word.include?(letter)
    end

end