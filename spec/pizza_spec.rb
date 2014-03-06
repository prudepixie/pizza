require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end
end

describe Topping do
  describe '.initialize' do
      it "sets the name of the topping" do
        topping= Topping.new('olives')
        expect(topping.name).to eq('olives')
      end

      it "sets whether or not the topping is vegetarian" do
        topping=Topping.new "bell peppers", vegetarian: true
        expect(topping.vegetarian).to eq(true)
      end

      it "exists" do
        expect(Topping).to be_a(Class)
      end

      it "records all of the toppings"do
        toppings=[
          Topping.new('mushrooms', vegetarian: true),
          Topping.new('pepperoni')
        ]
        pizza= Pizza.new(toppings)

        expect(pizza.toppings).to eq(toppings)
      end

      it "defaults the toppings to cheese only, if the pizza has no toppings" do
        pizza=Pizza.new

        expect(pizza.toppings.size).to eq(1)
        expect(pizza.toppings.first.name).to eq('cheese')
      end

      it "checks if all toppings on a pizza are vegetarian" do
        toppings=[
          Topping.new('mushrooms', vegetarian: true),
          Topping.new('tomatoes', vegetarian: true),
        ]
        pizza=Pizza.new(toppings)
        expect(pizza.vegetarian?).to eq(true)
      end

      it "accepts a new topping and adds it to existing topping array" do
        toppings=[
          Topping.new('mushrooms', vegetarian: true),
          Topping.new('pepperoni')
        ]
        pizza=Pizza.new(toppings)
        lemons=Topping.new("lemons")

        expect(pizza.add_topping(lemons)).to eq(toppings)
      end

  end
end
