require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../player.rb')

class TestPlayer < Minitest::Test

    def setup()
        @player = Player.new("Ruben")
    end

    def test_has_name()
        assert_equal("Ruben", @player.name)
    end

    def test_has_lives()
        assert_equal(6, @player.lives)
    end

end