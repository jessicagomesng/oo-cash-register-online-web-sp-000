class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
  end

  def add_item(title, price)
    @total + price
  end

  def apply_discount
    @total
  end

end
