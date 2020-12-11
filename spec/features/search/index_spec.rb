require 'rails_helper'

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of people who live in the Fire Nation. (i.e. there are 97 total)
# And I should see a list with the detailed information for all 97 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies (if they have any)
# - Any affiliation that the member has (if they have any)

describe 'as a user' do
  describe 'when I visit / and I select "Fire Nation" from the select field and click "Search for Members"' do
    it 'then I should be on the page "/search", I should see the total number of people who live in the Fire Nation, and I should see a list with the detailed information for all 20 members of the Fire Nation' do
      visit root_path

      select 'Fire Nation', :from => :nation

      click_button 'Search For Members'

      expect(current_path).to eq(search_path)

      expect(page).to have_content("Total Members: 20")

      expect(page).to have_css('.members', count: 20)

      within(first('.members')) do
        expect(page).to have_content("Name: Chan (Fire Nation admiral)")
        expect(page).to have_content("Affiliation: Fire Nation Navy")
        expect(page).to have_content("Allies: Ozai")
        expect(page).to have_content("Enemies: Earth Kingdom")
      end
    end
  end
end
