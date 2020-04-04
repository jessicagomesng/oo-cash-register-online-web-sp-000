class CashRegister

  attr_accessor :total, :items 
  @items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price)
    @total + price
    @items << title
  end

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      @total = @total * @discount
    end
  end

end
