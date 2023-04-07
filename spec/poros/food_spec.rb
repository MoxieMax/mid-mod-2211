require 'rails_helper'

RSpec.describe Food do
  let(:data) do
    result = {description: "SWEET POTATOES",
              gtinUpc: 8901020020844,
              brandOwner: "NOT A BRANDED ITEM",
              ingredients: "ORGANIC SWEET POTATOES."}
            end
  let(:food) {Food.new(data)}
  
  it "exists and has attributes" do
    expect(food).to be_a(Food)
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.gtinUpc).to eq(8901020020844)
    expect(food.brand).to eq("NOT A BRANDED ITEM")
    expect(food.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end