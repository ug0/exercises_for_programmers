class SelfCheckout
  RATE = 0.055
  @arr = []

  def output
    puts "Please input the number of items: "
    puts "Must be numberic!" while (n=gets.chomp.to_i) <= 0
    @arr = 1.upto(n).reduce([]){ |res, n| res << single_input(n) }
    puts "Subtotal: %.2f" % subtotal
    puts "Tax: %.2f" % tax
    puts "Total: %.2f" % total
  end

  private

  def single_input(n)
    puts "Enter the price of item #{n}: "
    puts "Must be numeric!" while (price=gets.chomp.to_i) <= 0
    puts "Enter the quantity of imte #{n}"
    puts "Must be numeric!" while (quantity=gets.chomp.to_i) <= 0
    [price, quantity]
  end

  def subtotal
    @arr.reduce(0){ |res, ele| res + ele.first * ele.last }
  end

  def tax
    subtotal * RATE
  end

  def total
    subtotal + tax
  end
end

SelfCheckout.new.output
