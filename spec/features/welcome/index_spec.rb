require 'rails_helper'

RSpec.describe "/", type: :feature do
  
  before :each do
    visit "/"
  end
  
  describe "as a user when I visit welcome#index" do
    it "has a form" do
      expect(current_path).to eq("/")
      expect(page).to have_field(:q)
      expect(page).to have_button("Search")
    end
    
    describe "can search for an ingredient" do
      it "" do
        fill_in(:q, with: "sweet potatoes")
        
        click_button("Search")
        
        expect(current_path).to eq("/foods")
      end
      
    end
  end
end

# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"