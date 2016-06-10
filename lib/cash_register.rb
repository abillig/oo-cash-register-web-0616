require 'pry'

class CashRegister
  attr_accessor :total 
  attr_reader :discount



  def initialize(*discount)
    @total = 0 
    @discount=discount[0]
    @items = []
    @@transaction_counter=[]
  end

  def add_item(title, price, quantity=1)      
  quantity.times do |time|
  @total += price 
  @items << title 
  @@transaction_counter << price 
end
end

def apply_discount 
  if @discount == 20 
    @total = @total * 8 / 10 
    "After the discount, the total comes to $#{@total}."
  else 
    "There is no discount to apply."
  end
end

def items 
  @items 
end 

def void_last_transaction
@total -= @@transaction_counter[-1]
end
end

#need to not apply discount to non-employees 

new_register = CashRegister.new
new_register.add_item("eggs", 1.99)
new_register.add_item("tomato", 1.76, 3)
new_register.items
