# Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1}.

# Build up your coin_changer using tests. Commit to git after every test.

def coin_sorter(cents_recieved)
	coins = {}
	if cents_recieved == 5
		coins[:nickel] = cents_recieved / 5
	elsif cents_recieved.between?(1, 4)
		coins[:penny] = cents_recieved
	end
	coins
end

#Dollar Coin, Half Dollar, Quarter, Dime, Nickel, Penny, Barter :)