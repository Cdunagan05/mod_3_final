class SearchController < ApplicationController
  def index
    @stores = BestBuy.stores
  end
end
