require 'rails_helper'

RSpec.describe UsdaFacade do
  describe "does facade things" do
    # let!(:facade) {UsdaFacade.new} #wouldn't recognize the food_search method
    
    before :all do
      @food_facade = UsdaFacade.new
    end
      
    it "exists and has attributes" do
      expect(@food_facade).to be_a(UsdaFacade)
    end
    
    it "returns top 10 Food objects from a keyword search" do
      expect(@food_facade.food_search("sweet potatoes").count).to eq(10)
      # binding.pry
    end
  end
end