require "minitest/autorun"
require_relative "coinfunc.rb"

class TestCoinSorter <Minitest::Test
	def test_no_coins_in_hand_equals_empty_hash
		cents_recieved = 0
		assert_equal({}, coin_sorter(cents_recieved))
	end
end