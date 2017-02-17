require "minitest/autorun"
require_relative "change_machine.rb"

class TestCoinMachine < Minitest::Test

	def test_accepts_numbers_only_false
		assert_equal(false,only_numbers("Gaben"))
	end

	def test_accepts_numbers_only_true
		assert_equal(true,only_numbers(30))
	end

end