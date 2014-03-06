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
    end
  it "exists" do
    expect(Topping).to be_a(Class)

  end
end
