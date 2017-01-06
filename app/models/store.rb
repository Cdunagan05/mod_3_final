class Store
  attr_reader :distance,
              :storeType,
              :longName,
              :city,
              :phone

  def initialize(raw_store)
    @distance = raw_store["distance"]
    @storeType = raw_store["storeType"]
    @longName = raw_store["longName"]
    @city = raw_store["city"]
    @phone = raw_store["phone"]
  end
end
