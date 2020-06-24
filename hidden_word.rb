class HiddenWord

    attr_reader(:word, :display)

    def initialize(word)
        @word = word
        @display = "*" * word.length
    end

end