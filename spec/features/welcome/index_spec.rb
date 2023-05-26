require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  describe 'As a visitor' do
    it 'I see a select field to select an affiliation' do
      visit root_path

      expect(page).to have_content('The Four Nations')
      expect(page).to have_content('Search For Members by their Nation')
      # def asset_exists?("app/assets/images/avatar.jpg")
      #   if Rails.configuration.assets.compile
      #     Rails.application.precompiled_assets.include? "app/assets/images/avatar.jpg"
      #   else
      #     Rails.application.assets_manifest.assets["app/assets/images/avatar.jpg"].present?
      #   end
      # end
      # expect(page).to have_image("app/assets/images/avatar.jpg")
      expect(page).to have_select(:nation)
      expect(page).to have_button('Search For Members')
      select 'Air Nomads', from: :nation
      select 'Earth Kingdom', from: :nation
      select 'Water Tribes', from: :nation
      select 'Fire Nation', from: :nation

      click_button 'Search For Members'

      expect(current_path).to eq(search_path)

    end
  end
end