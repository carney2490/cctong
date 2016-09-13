require "minitest/autorun"
require_relative "coinfunc.rb"

class TestCoinSorter <Minitest::Test
	def test_no_coins_in_hand_equals_empty_hash
		cents_recieved = 0
		assert_equal({}, coin_sorter(cents_recieved))
	end
	def test_one_cent_equals_one_penny
		cents_recieved = 1
		assert_equal({:penny => 1}, coin_sorter(cents_recieved))
	end
	def test_two_cents_equals_two_pennies
		cents_recieved = 2
		assert_equal({:penny => 2})
	end
end