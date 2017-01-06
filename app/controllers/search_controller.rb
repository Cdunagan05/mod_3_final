class SearchController < ApplicationController
  def index
    # response = Faraday.get "https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=distance,storeType,longName,city,phone&pageSize=15&apiKey=#{ENV['API_KEY']}"
    # @rep = JSON.parse(response.body)
    @stores = BestBuy.stores
    binding.pry
  end
end
