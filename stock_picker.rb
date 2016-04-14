def stock_picker(prices)
	
	best_profit = prices[1] - prices[0]
	buy_day = 0
	sell_day = 1
	
	(0...prices.length - 1).each do |day|
		prices_remaining = prices[day + 1, prices.length - 1]
		running_best_profit = prices_remaining.max - prices[day]
		if running_best_profit > best_profit
			best_profit = running_best_profit
			buy_day = day
			sell_day = prices_remaining.index(prices_remaining.max) + day + 1
		end
	end

	puts "You should buy on day " + (buy_day + 1).to_s + " and sell on day " + (sell_day + 1).to_s + "."

end



puts stock_picker([21,15,54,29,31,56,33,19])
#You should buy on day 2 and sell on day 6 for a profit of 56 - 15 === $41.