class UsdaFacade
  
  def self.food_search(word)
    UsdaService.keyword_search(word)[:results].map do |food|
      Food.new(food)
    end
  end
  
end

# binding.pry
# results = UsdaService.keyword_search(word)[:results]
# binding.pry
# 
# @results.10.times.map do |food|
#   Food.new(food)
# end