def stock_picker(prices)
	max_profit = 0
	profit = 0
	days = []
	day1 = 0
	day2 = 0
	prices.each do |i|
		day2 = 0
		prices.each do |j|
			if i < j
				if day2 > day1
					profit = j - i
					if (profit) > max_profit
						max_profit = profit
						days[0] = day1
						days[1] = day2
					end
				end
			end
		day2 += 1
		end
		day1 += 1
	end
	puts "The max profit will be #{max_profit}, which is found by buying on day #{days[0]} and selling on day #{days[1]}."
end

stock_picker([17,3,6,9,15,8,6,1,10])