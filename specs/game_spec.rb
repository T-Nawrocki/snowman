require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../game.rb')
require_relative('../player.rb')
require_relative('../hidden_word.rb')

class TestGame < Minitest::Test

    def setup()
        @hidden_word = HiddenWord.new("snowman")
        @player = Player.new("Ruben")
        @game = Game.new(@player, @hidden_word)
    end

    def test_has_player()
        assert_equal(@player, @game.player)
    end

    def test_hidden_word()
        assert_equal(@hidden_word, @game.hidden_word)
    end

    def test_guessed_letters_starts_empty()
        assert_equal([], @game.guessed_letters)
    end

end