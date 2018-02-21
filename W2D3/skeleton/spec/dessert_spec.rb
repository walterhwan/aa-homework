require 'rspec'
require 'dessert'
require 'active_support/inflector'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new(type, quantity, chef) }
  let(:type) { 'cake' }
  let(:quantity) { 4 }
  let(:chef) { double("chef") }

  describe "#initialize" do

    it "sets a type" do
      expect(dessert.type).to eq(type)
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(4)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new(type, 'a', chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before(:each) do
      dessert.add_ingredient('sugar')
    end

    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to eq(['sugar'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.ingredients).to receive(:shuffle!)
      dessert.mix!
    end
  end

  describe "#eat" do
    before(:each) do
      dessert.eat(1)
    end

    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(6) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return('Mason')

      expect(dessert.serve).to eq("#{chef.titleize} has made #{quantity} #{type.pluralize}!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake)

      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
