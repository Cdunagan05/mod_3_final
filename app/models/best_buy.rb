class BestBuy
  def self.stores
    BestBuyService.store.map do |raw_store|
      Store.new(raw_store)
    end
  end
end
