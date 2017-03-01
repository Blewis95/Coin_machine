# Coin Kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}

# Start a new repo
# Use Test Driven Development commit to git after every test

require "minitest/autorun"
require_relative "change_machine.rb"

class TestCoinMachine < Minitest::Test

	def test_accepts_numbers_only_false
		assert_equal(false,only_numbers("Gaben"))
	end

	def test_accepts_numbers_only_true
		assert_equal(true,only_numbers(30))
	end

	def test_return_right_hash
		assert_equal({:dollar=>2, :quarter=>1, :dime=>1, :nickel=>1, :penny=>1}, calculations(241))
	end	

	def test_3
		assert_equal({:penny=>3},calculations(3))
	end

end