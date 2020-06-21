def stock_picker(prices)
    profit = 0
    buy_price = 0
    sell_price = 0
    prices.each_with_index do |price, index|
        for i in index...prices.length
            if prices[i] - price > profit
                profit = prices[i] - profit
                buy_price = index
                sell_price = i
            end
        end
    end
    list = [buy_price, sell_price]
    puts list
end




stock_picker([17,3,6,9,15,8,6,1,10])