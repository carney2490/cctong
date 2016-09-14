# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1}.

# Build up your coin_changer using tests. Commit to git after every test.

def coin_sorter(cents_received)
	coins = {}
	if cents_received >= 100
		coins[:silver_dollar] = cents_received / 100
		cents_received = cents_received % 100
	end
	if cents_received >= 50
		coins[:half_dollar] = cents_received / 50
		cents_received = cents_received % 50
	end
	if cents_received >= 25
		coins[:quarter] = cents_received / 25
		cents_received = cents_received % 25
	end
	if cents_received >= 10
		coins[:dime] = cents_received / 10
		cents_received = cents_received % 10
	end
	if cents_received >= 5
		coins[:nickel] = cents_received / 5
		cents_received = cents_received % 5
	end
	if cents_received >= 1
		coins[:penny] = cents_received / 1
	end
	coins
end



# coins = coin_sorter(6)
# puts coins

#Dollar Coin, Half Dollar, Quarter, Dime, Nickel, Penny, Barter :)



# if cents_received % 100 == 0
# 	Dollar Coin
# elsif cents_received % 50 == 0
# 	Half_dollar
# elsif cents_received % 25 == 0
# 	quarter
# elsif cents_received % 10 == 0
# 	dime

# 	greater than or equal to
# 	