require "pry"

class CashRegister
  attr_accessor :total, :last_price, :discount, :quantity, :title, :price

  def initialize(discount = 0 )
    @total = 0
    @discount = discount
    @items = []
    @last_price = []
  end


  def add_item(title, price, quantity = 1)
#binding.pry
#unless @title = nil
    @total = @total + (price * quantity)
  #  @title = title
  quantity.times do
    @items << title
    @last_price =  (price * quantity)
  end

  end


  def apply_discount
  # binding.pry
    if  @discount == 0
        return "There is no discount to apply."
      else
          @total -= ((@discount.to_f / 100.0) * @total)
      return "After the discount, the total comes to $#{@total.to_i}."
      end
    end

  def items
    @items
  end

  def void_last_transaction
 #binding.pry
if @items.count == 0
@total = 0.0

 elsif @items.count > 0
   @total - @last_price
end
 end

  #  @last_price.pop
#  until @last_price.count == 1
#     @last_price.shift
#     @last_price.join("").to_i
#     @total - @last_price
#if @last_price.count == 0
#  @total = 0.0
#    end
#    end
#  end

end
 # You'll need to make an
#additional attribute accessor and keep track of that last
#transaction amount somehow. In what method of
 #the class are you working with an individual item?
