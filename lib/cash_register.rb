require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :last_trans
    
    def initialize(discount= 0)
        @total = 0
        @discount = discount
        @items = []
        
    end
    def add_item(item, price, quantity = 1)
        @price = price 
        self.total += (price*quantity)
        quantity.times do 
            @items << item
        end
        @last_trans = (price*quantity) 
    end

    def apply_discount
        if @discount > 0
            k = @discount.to_f
            new_discount = k/100.0
            # binding.pry
            @total -= (@total*new_discount)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_trans
    end 

end


