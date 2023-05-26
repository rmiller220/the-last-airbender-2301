require 'rails_helper'

RSpec.describe AffiliationService do
  before do 
    @service = AffiliationService.new
  end

  it 'can get fire nation data' do

    fire = @service.get_fire_affiliation_data

    expect(fire).to be_an(Array)
    expect(fire.count).to eq(97)
    expect(fire[1]).to be_a(Hash)
    expect(fire[1]).to have_key(:allies)
    expect(fire[1][:allies]).to be_an(Array)
    expect(fire[1]).to have_key(:enemies)
    expect(fire[1][:enemies]).to be_an(Array)
    expect(fire[1]).to have_key(:affiliation)
    expect(fire[1][:affiliation]).to be_a(String)
    expect(fire[1]).to have_key(:photoUrl)
    expect(fire[1][:photoUrl]).to be_a(String)
    expect(fire[1]).to have_key(:name)
    expect(fire[1][:name]).to be_a(String)

    fire.each do |member|
      expect(member).to have_key(:name)
      expect(member[:name]).to be_a(String)
      expect(member).to have_key(:allies)
      expect(member[:allies]).to be_an(Array)
      expect(member).to have_key(:enemies)
      expect(member[:enemies]).to be_an(Array)
      expect(member).to have_key(:affiliation)
      expect(member[:affiliation]).to be_a(String)
      expect(member).to have_key(:name)
      expect(member[:name]).to be_a(String)
      if member[:photoUrl] != nil
        expect(member[:photoUrl]).to be_a(String)
      end
    end

  end
end