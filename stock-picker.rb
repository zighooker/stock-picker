def stock_picker(prices)
  best_sale = [0, 0, 0]
  prices.each_with_index do |val, index|
    for sub_index in index..prices.length - 1 do
      if (prices[sub_index] - val) > best_sale[2]
        best_sale = [index, sub_index, prices[sub_index] - val]
      end
    end
  end
  puts "Buy: Day #{best_sale[0]} for $#{prices[best_sale[0]]}"
  puts "Sell: Day #{best_sale[1]} for $#{prices[best_sale[1]]}"
  puts "Profit: $#{best_sale[2]}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
