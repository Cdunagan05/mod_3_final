require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "deletes a single item" do
    item_1 = Item.create(name: "Starbucks", description: "This is cool", image_url: "heck no")
    item_2 = Item.create(name: "Best Buy", description: "Hi", image_url: "nope")
    item_3 = Item.create(name: "Car Stone", description: "Not here", image_url: "Sick")

    delete "/api/v1/items/#{item_2.id}.json"

    expect(response.status).to eq(204)
    expect(Item.count).to eq(2)
    expect(Item.first["name"]).to eq("Starbucks")
    expect(Item.last["name"]).to eq("Car Stone")
  end
end
