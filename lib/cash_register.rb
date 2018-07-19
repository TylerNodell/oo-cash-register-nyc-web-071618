# Cash Register object
class CashRegister
  attr_accessor :total, :discount, :items, :oldtotal
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @oldtotal = price * quantity
    # @title = title
    # @price = price
    # @total += price * quantity
    # @total
  end

  def apply_discount
    if discount != 0
      @total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  # def :items
  #   @items = item
  # end

  def void_last_transaction
    @total -= oldtotal
  end
end

register = CashRegister.new
register.add_item('stuff', 13, 5)
register.apply_discount