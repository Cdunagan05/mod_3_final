require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "returns all items" do
    item_1 = Item.create(name: "Starbucks", description: "This is cool", image_url: "heck no")
    item_2 = Item.create(name: "Best Buy", description: "Hi", image_url: "nope")

    get "/api/v1/items.json"

    parsed_items = JSON.parse(response.body)

    expect(response.status).to eq(200)
    expect(parsed_items[1]["name"]).to eq("Best Buy")
    expect(parsed_items[0]["name"]).to eq("Starbucks")

    expect(parsed_items[0]["image_url"]).to eq("heck no")
    expect(parsed_items[1]["image_url"]).to eq("nope")
    expect(parsed_items[0]["created_at"]).to eq(nil)
    expect(parsed_items[1]["updated_at"]).to eq(nil)
  end
end
