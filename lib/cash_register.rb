class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @item_prices = []
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times { self.items << title }
    quantity.times { self.item_prices << price }
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100-@discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    #The last item = @items[-1]
    #remove add_item (the last item)
    @total = @total - @item_prices[-1]
    @items = @items.pop

    if @items.length == 0
      @total == 0.0
    end
  end

end
