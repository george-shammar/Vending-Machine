class Store

    @@stock = {
      sausage: 2,
      biscuit: 75,
      bread: 2.5
    }

  def initialize()
  
  end


  def buy(name, amount)
    total = 0
    amount.each do |i|
      total += i
    end

      @@stock.each do |snack, cost|
        if snack == name && total == cost
          return snack
        elsif snack == name && total < cost
          short_fall = cost - total
          return short_fall
        end

      end
      
      "not in stock"
  end




end

