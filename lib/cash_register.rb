class CashRegister
  attr_accessor :total, :discount
  attr_reader :items, :prices

  def initialize(discount=nil, total=0)
    @total = total
    @discount = discount
    @items = []
    @prices = []
  end
  
  def discount
    @discount
  end

  def apply_discount
    if @discount
    @total -= @total * @discount / 100
    p "After the discount, the total comes to $#{@total}."
    else
    p "There is no discount to apply."
    end
  end

  def add_item(title, price, quantity=nil)
    @price = price
    if quantity
      @total += (price * quantity)
      quantity.times do
      @items << title
      @prices << price
    end
    else
      @total += price
      @items << title
    end
  end

  def void_last_transaction
    if @prices.empty?
    @total -= @price
    else
    @total = 0
    end
  end

  def items
    @items
  end

  def total
    @total.to_f
  end

end
