class CashRegister

  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price)
    @total + price
  end

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      @total = @total * @discount
    end 
  end

end
