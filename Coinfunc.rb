# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1}.

# Build up your coin_changer using tests. Commit to git after every test.

def coin_sorter(cents_received)
	coins = {}
	if cents_received >= 5
		coins[:nickel] = 1
		cents_received = cents_received -5
		if cents_received > 0
			coins[:penny] = cents_received
		end
	elsif 
		cents_received == 5
		coins[:nickel] = cents_received / 5
	elsif cents_received.between?(1, 4)
		coins[:penny] = cents_received
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