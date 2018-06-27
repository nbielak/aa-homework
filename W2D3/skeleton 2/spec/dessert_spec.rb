require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("Pie", 75, "Roger")}
  subject(:dessert1) { Dessert.new("Pie", 75, "Roger")}
  subject(:dessert2) { Dessert.new("Cake", "ten", "Brenda")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type"
      expect(dessert.type).to eq("Pie")
    end

    it "sets a quantity" do
      expect(desser.quantity).to eq(75)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect(dessert2).to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients("apple")).to_not include("apple")
      dessert.add_ingredient("apple")
      expect(dessert.ingredients("apple")).to include("apple")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.ingredients).to_not equal(dessert.ingredients.mix!)
      expect(dessert.ingredients.sort).to equal(dessert1.ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(5)).to eq(70)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(dessert.eat(100)).to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
    allow(chef).to receive(:titleize).and_return("Chef Roger the Great Baker")
    expect(dessert.serve).to eq("Chef Roger has made 75 Pies!")
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
