require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../hidden_word.rb')

class TestHiddenWord < Minitest::Test

    def setup()
        @hidden_word = HiddenWord.new("snowman")
    end

    def test_has_word()
        assert_equal("snowman", @hidden_word.word)
    end

    def test_initial_display()
        assert_equal("*******", @hidden_word.display)
    end

end