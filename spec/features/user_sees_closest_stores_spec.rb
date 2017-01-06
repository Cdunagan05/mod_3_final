require 'rails_helper'

RSpec.describe "User enters a zipcode" do
  it "Sees only 15 closest stores" do
    # As a user
    # When I visit "/"
    visit '/'

    # And I fill in a search box with "80202" and click "search"
    fill_in "q", with: "80202"
    click_link "Search For Stores"

    # Then my current path should be "/search" (ignoring params)
    expect(current_path).to eq("/search")

    # And I should see stores within 25 miles of 80202
    # And I should see a message that says "16 Total Stores"
    # expect(page).to have_content("16 Total Stores")

    expect(page).to have_content("Best Buy Mobile - Cherry Creek Shopping Center")
    expect(page).to have_content("3.25")
    expect(page).to have_content("Denver")
    expect(page).to have_content("303-270-9189")
    expect(page).to have_content("Mobile")
    expect(page).to have_content("Best Buy - Parker")

    expect(page).to have_content("15. Store Name:")
    expect(page).to_not have_content("16. Store Name:")
  end
end
