require 'rspec'
require 'dessert'
require 'active_support/inflector'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Mason") }
  subject(:coconut_cake) { Dessert.new('cake', 10, chef) }

  describe "#initialize" do

    it "sets a type" do
      expect(coconut_cake.type).to eq('cake')
    end

    it "sets a quantity" do
      expect(coconut_cake.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(coconut_cake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('cake', 'a', chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      coconut_cake.add_ingredient('sugar')
      expect(coconut_cake.ingredients).to eq(['sugar'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(coconut_cake.ingredients).to receive(:shuffle!)
      coconut_cake.mix!
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      coconut_cake.eat(1)
      expect(coconut_cake.quantity).to eq(9)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { coconut_cake.eat(20) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return('Chef Mason')

      expect(coconut_cake.serve).to eq("Chef Mason has made 10 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(coconut_cake)
      coconut_cake.make_more
    end
  end
end
