require 'rails_helper'

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

      within all('.members')[1] do
        expect(page).to have_content("Name: Circus master")
        expect(page).to have_content("Affiliation: Fire Nation circus")
        expect(page).to have_content("Allies: Ty Lee")
        expect(page).to have_content("Enemies: Appa")
        expect(page).to have_xpath("//img[contains(@src,'https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819')]")
      end
    end
  end
end
