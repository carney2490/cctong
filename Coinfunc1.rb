# def coin_sorter(cent_recieved)
# 	{:penny => 1}
# end

# def coin_sorter(cent_recieved)
# 	{}
# 	coins = {}
# 	if cent_recieved >= 1
# 		coins[:penny] = cent_recieved
# 	end
# 	coins
# end

# def coin_sorter(cents_recieved)
#   	coins = {}
#  	if cents_recieved == 5
#  		coins[:nickel] = cents_recieved / 5
#  	elsif cents_recieved.between?(1, 4)
#   		coins[:penny] = cents_recieved
#   	end
#   	coins
#   end

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





