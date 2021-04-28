require 'pry'

class CashRegister 
  attr_accessor :total, :discount, :items, :last_transaction
 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(item, price, item_quantity = 1)
    @total += price * item_quantity 
    item_quantity.times {@items << item}
    @last_transaction = price * item_quantity
  
  end 
  
  def apply_discount
    if @discount != 0 
<<<<<<< HEAD
      @total -= @total * @discount / 100
      # to output the correct total of floats, without producing a number that
      # potentially has about 10 decimal places, I found that during string
      # interpolation below, the float total must round to 2 decimal places.
      # "After the discount, the total comes to $15.350000000000001."
      # vs. 
      # "After the discount, the total comes to $15.35"
      "After the discount, the total comes to $#{@total.round(2)}." 
=======
      @total -= @total * @discount / 100#).round(2)
      # to apply a discount to floats, need to round to two decimal places.
      # Otherwise, potentially, a number with about 10 decimal places will get
      # puts'ed out.
      # "After the discount, the total comes to $15.350000000000001."
      # vs. 
      # "After the discount, the total comes to $15.35"
      "After the discount, the total comes to $#{@total}." 
>>>>>>> 769eae23c11ebcddff966c6c3b71ba810a278032
     
    else 
      "There is no discount to apply."
    end
  end 
  
  def void_last_transaction
    @total -= @last_transaction
  end 
end 

# Instead of calling instance variables within instance methods, can call 
# instance methods inside other instance methods by using the self keyword, 
# where self refers to the instance on which we're operating:
    # self.total, self.items, self.last_transaction, self.discount
# But, calling the instance variable, defined withing attr_accessor, within 
# an instance method does same thing.
