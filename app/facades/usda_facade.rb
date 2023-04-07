class UsdaFacade
  
  def food_search(word)
    results = UsdaService.keyword_search(word)[:foods].first(10)
    # binding.pry
    
    results.map do |food|
      Food.new(food)
    end
  end
  
end


# binding.pry
# UsdaService.keyword_search(word)[:foods].map do |food|
#   Food.new(food)
# end

# binding.pry
# results = UsdaService.keyword_search(word)[:foods]
# binding.pry
# 
# @results.10.times.map do |food|
#   Food.new(food)
# end