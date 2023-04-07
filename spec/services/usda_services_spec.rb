require 'rails_helper'

RSpec.describe UsdaService do
  describe "returns a JSON object containing search results" do
    let(:search) {UsdaService.new.keyword_search("sweet potatoes")}
    
    it "exists" do
      expect(search).to be_a(Hash)
      expect(search.keys).to eq([
                                :totalHits, 
                                :currentPage, 
                                :totalPages, 
                                :pageList, 
                                :foodSearchCriteria, 
                                :foods, 
                                :aggregations
                                ])
      expect(search[:totalHits]).to be > 30000
      expect(search[:totalHits]).to eq(51270)
      # binding.pry
    end
    
  end
end