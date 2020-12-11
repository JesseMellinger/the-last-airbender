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
    it 'then I should be on the page "/search", I should see the total number of people who live in the Fire Nation, and I should see a list with the detailed information for all 97 members of the Fire Nation' do
      visit root_path

      select 'Fire Nation', :from => :nation

      click_button 'Search For Members'

      expect(current_path).to eq(search_path)

      expect(page).to have_content("Total Members: 97")

      expect(page).to have_css('.members', count: 97)

      within(first('.members')) do
        # expect(page).to have_content("Name of park: Andrew Johnson National Historic Site")
        # expect(page).to have_content("Description: Andrew Johnson's complex presidency (1865-69) illustrates the Constitution at work following the Civil War. As the President and Congress disagreed on Reconstruction methods, the Constitution served as their guide on balance of powers, vetoes, and impeachment. In the end, it evolved as a living document with pivotal amendments on freedom, citizenship, and voting rights - topics still vital today.")
        # expect(page).to have_content("Directions: GPS The GPS setting for Andrew Johnson NHS may be listed as 121 Monument Ave, which is the park HQ in the National Cemetery. To arrive at the Visitor Center, use 101 North College Street, Greeneville, TN. Plane The closest airport is the Tri-Cities Regional Airport, 43 miles NE of Greeneville. From the airport, take I-81 South to exit 36 and follow the signs to Greeneville. Car From I-81S take exit 36 to Rt. 172 south to Greeneville. From I-81N take exit 23 to Rt. 11E north to Greeneville.")
        # expect(page).to have_content("Wednesday: 9:00AM - 4:00PM")
        # expect(page).to have_content("Monday: Closed")
      end
    end
  end
end
