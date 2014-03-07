class Pizza
  attr_accessor :toppings, :delivery_time
  def initialize(toppings = [Topping.new('cheese')])
    @toppings=toppings
  end

  def vegetarian?
    @toppings.all?{|x| x.vegetarian == true}
  end

  def add_topping(new_topping)
    @toppings<<new_topping
  end

  def deliver!(now=Time.now)
    @delivery_time=Time.now + 30*60
  end

  def late?
end

class Topping
  attr_accessor :name, :vegetarian
  def initialize(name, vegetarian: false)
    @name=name
    @vegetarian=vegetarian
  end
end
