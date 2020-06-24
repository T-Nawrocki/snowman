require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../hidden_word.rb')

class TestHiddenWord < Minitest::Test

end