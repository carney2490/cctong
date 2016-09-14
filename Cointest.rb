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
	def test_7_cents_equals_one_nickel_and_two_pennies
		cents_received = 7
		assert_equal({:nickel => 1, :penny => 2}, coin_sorter(cents_received))
	end
	def test_10_cents_equals_one_dime
		cents_received = 10
		assert_equal({:dime => 1}, coin_sorter(cents_received))
	end
	def test_14_cents_equals_one_dime_and_four_pennies
		cents_received = 14
		assert_equal({:dime => 1, :penny => 4}, coin_sorter(cents_received))
	end
	def test_25_cents_equals_one_quarter
		cents_received = 25
		assert_equal({:quarter => 1}, coin_sorter(cents_received))
	end
	def test_50_cents_equals_one_half_dollar
		cents_received = 50
		assert_equal({:half_dollar => 1}, coin_sorter(cents_received))
	end
	def test_1_dollar_equals_one_silver_dollar
		cents_received = 100
		assert_equal({:silver_dollar => 1}, coin_sorter(cents_received))
	end
	def test_359_cents_equals_three_silver_dollars_one_half_dollar_one_nickel_and_four_pennies
		cents_received = 359
		assert_equal({:silver_dollar => 3, :half_dollar => 1, :nickel => 1, :penny => 4}, coin_sorter(cents_received))
	end
end