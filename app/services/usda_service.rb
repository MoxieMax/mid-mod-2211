class UsdaService
  def fetch_path(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def keyword_search(word)
    fetch_path("v1/foods/search?query=#{word}&dataType=&pageSize=25&pageNumber=1&sortBy=dataType.keyword&sortOrder=asc")
  end
  
  private
    def conn
      Faraday.new(url: "https://api.nal.usda.gov/fdc/", params: { api_key: ENV["API_KEY"] })
    end
end