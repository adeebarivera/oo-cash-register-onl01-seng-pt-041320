class CashRegister

  attr_accessor :total, :employee_discount, :items

  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
    @items = []
  end


  def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction_amount = @total
    @total
  end

  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


 def void_last_transaction
        last_transaction = @last_transaction.pop
        @total -= last_transaction[1] * last_transaction[2]
   end

end

