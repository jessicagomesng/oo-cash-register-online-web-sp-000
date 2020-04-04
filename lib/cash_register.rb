class CashRegister

  attr_accessor :items, :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    @items << price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100-@discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

end
