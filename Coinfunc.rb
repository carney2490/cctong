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
	coin_changer = {:trillion_dollar_coin => 1000000000000000000000, :silver_dollar => 100, :half_dollar => 50, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	coin_changer.each do |name, amount|
		if cents_received >= amount
			coins[name] = cents_received / amount
		end
		cents_received = cents_received % amount
	end
	coins
end

def monkeys(coin_hash)
	change = ""
	coin_hash.each do |name, amount|
		name = name.to_s
		if amount > 1 and name == :penny
			name = "pennies"
			elsif amount == 1 and name == :penny
				name = "penny"
		elsif amount > 1
			name = name.to_s + "s"
		else
			name
		end
		change << "," + amount.to_s + " " + name.to_s
	end
	change
end



# puts "I can tell you the combination of the least amount of coins for the number of cents you have"
# print "How many cents do you have?"
# cents_received = gets.chomp

# coins = coin_sorter([gets.chomp])
# puts coins
		
# 	end
# 	if cents_received >= 100
# 		coins[:silver_dollar] = cents_received / 100
# 		cents_received = cents_received % 100
# 	end
# 	if cents_received >= 50
# 		coins[:half_dollar] = cents_received / 50
# 		cents_received = cents_received % 50
# 	end
# 	if cents_received >= 25
# 		coins[:quarter] = cents_received / 25
# 		cents_received = cents_received % 25
# 	end
# 	if cents_received >= 10
# 		coins[:dime] = cents_received / 10
# 		cents_received = cents_received % 10
# 	end
# 	if cents_received >= 5
# 		coins[:nickel] = cents_received / 5
# 		cents_received = cents_received % 5
# 	end
# 	if cents_received >= 1
# 		coins[:penny] = cents_received / 1
# 		cents_received = cents_received % 1
# 	end
# 	coins
# end



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