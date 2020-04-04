class CashRegister

  attr_accessor :items, :discount
  @items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
  end

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      @total = @total * (100-@discount) / 100
      puts "After the discount, the total comes to #{@total}."
    end
  end

  def total=(total)
    @total = total
  end

  def total
    @total
  end


  def items
    @items
  end

end
