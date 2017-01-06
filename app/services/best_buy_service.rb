class BestBuyService
  def self.conn
    Faraday.new(:url => "https://api.bestbuy.com") do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end

  def self.store
    response = conn.get "/v1/stores(area(80202,25))?format=json&show=distance,storeType,longName,city,phone&pageSize=15&apiKey=#{ENV['API_KEY']}"
    JSON.parse(response.body)["stores"]
  end

end
