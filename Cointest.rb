require "minitest/autorun"
require_relative "coinfunc.rb"

class TestCoinSorter <Minitest::Test
	def test_no_coins_in_hand_equals_empty_hash
		cents_received = 0
		assert_equal({}, coin_sorter(cents_received))
	end
	def test_one_cent_equals_one_penny
		cents_received = 1
		assert_equal({:penny => 1}, coin_sorter(cents_received))
	end
	def test_two_cents_equals_two_pennies
		cents_received = 2
		assert_equal({:penny => 2}, coin_sorter(cents_received))
	end
	def test_5_cents_equals_one_nickel
		cents_received = 5
		assert_equal({:nickel => 1}, coin_sorter(cents_received))
	end
	def test_6_cents_equals_one_nickel_and_one_penny
		cents_received = 6
		assert_equal({:nickel => 1, :penny => 1}, coin_sorter(cents_received))
	end
end