# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1}.

# Build up your coin_changer using tests. Commit to git after every test.
# Next steps: 
# 1) see if you can remove the hard coded numbers from the logic of the code (can you set variable names at the top of the function to certain values that you can use in their place)?
# 2) make the penny if statement exactly as the others
# 3) see if you can find a way to only have a single if statement (think iteration)



def coin_sorter(cents_received)
	coins = {}
	change = []
	coin_changer = {:trillion_dollar_coin => 1000000000000000000000, :silver_dollar => 100, :half_dollar => 50, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	coin_changer.each do |name, amount|
		if cents_received >= amount
			coins[name] = cents_received / amount
		end
		cents_received = cents_received % amount
	end
	coins.each do |coin, amount|
            change.push(coin)
	end
end