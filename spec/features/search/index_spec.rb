require 'rails_helper'

RSpec.describe 'Search Index Page' do
  describe 'As a visitor' do
    before do
      @fire = AffiliationFacade.new.get_fire_nation_data.first(25)
    end
    it 'I see the total number of people who live in the Fire Nation' do
      visit root_path
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content('Fire Nation')
      expect(page).to have_content('Total Number of People Who Live in the Fire Nation: 97') #add number
      expect(page).to have_content("List of Allies")
      expect(page).to have_content("List of Enemies")
      expect(page).to have_content("List of Affiliations")
      expect(page).to have_content("Name")
      expect(page).to have_content("Photo if Possible")
      
      @fire.each do |member|
        expect(page).to have_content(member.name)
        expect(page).to have_content(member.allies)
        expect(page).to have_content(member.enemies)
        expect(page).to have_content(member.affiliation)
          if member.photo != nil
            expect(page).to have_css("img[src*='#{member.photo}']")
          end
        end
    end
  end
end