class SearchController < ApplicationController
  def index
    response = Faraday.get "https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=storeId,storeType,name,city,region&pageSize=15&apiKey=#{ENV['API_KEY']}"
    @rep = JSON.parse(response.body)
    binding.pry
  end
end
