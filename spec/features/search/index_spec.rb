require 'rails_helper'

RSpec.describe 'Search Index Page' do
  describe 'As a visitor' do

    it 'I see the total number of people who live in the Fire Nation' do
      visit root_path
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content('Fire Nation')
      expect(page).to have_content('Total Number of People Who Live in the Fire Nation:') #add number
      expect(page).to have_content("List of Allies")
      expect(page).to have_content("List of Enemies")
      expect(page).to have_content("List of Affiliations")
      #expect page to have 25 members
    end
  end
end