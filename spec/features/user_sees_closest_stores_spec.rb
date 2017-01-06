require 'rails_helper'

Rspec.describe "User enters a zipcode" do
  it "Sees only 15 closest stores" do
    # As a user
    # When I visit "/"
    visit '/'

    # And I fill in a search box with "80202" and click "search"
    fill_in "search", with: "80202"
    click "search"

    # Then my current path should be "/search" (ignoring params)
    expect(current_path).to be("/search")

    # And I should see stores within 25 miles of 80202
    # And I should see a message that says "16 Total Stores"
    expect(page).to have_content("16 Total Stores")

    expect(page).to 
    # And I should see exactly 15 results
    # And I should see the long name, city, distance, phone number and store type for each of the 15 results
  end
end
