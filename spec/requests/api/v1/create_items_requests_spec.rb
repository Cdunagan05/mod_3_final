require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "creates an item" do
    item_1 = Item.create(name: "Starbucks", description: "This is cool", image_url: "heck no")
    item_2 = Item.create(name: "Best Buy", description: "Hi", image_url: "nope")

    expect(Item.count).to eq(2)

    post "/api/v1/items.json"

    parsed_items = JSON.parse(response.body)

    expect(response.status).to eq(200)
    expect(parsed_items["name"]).to eq("Best Buy")
    expect(parsed_items["description"]).to eq("Hi")
    expect(parsed_items["image_url"]).to eq("nope")
    expect(parsed_items["created_at"]).to eq(nil)
  end
end
