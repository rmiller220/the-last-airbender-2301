require 'rails_helper'

RSpec.describe AffiliationService do
  before do 
    @service = AffiliationService.new
  end

  it 'can get fire nation data' do

    fire = @service.get_fire_affiliation_data

    expect(fire).to be_an(Array)
    expect(fire.count).to eq(97)
    expect(fire.first).to be_a(Hash)
    expect(fire.first).to have_key(:allies)
    expect(fire.first[:allies]).to be_an(Array)
    expect(fire.first).to have_key(:enemies)
    expect(fire.first[:enemies]).to be_an(Array)
    expect(fire.first).to have_key(:affiliation)
    expect(fire.first[:affiliation]).to be_a(String)
    expect(fire.first).to have_key(:photoUrl)
    expect(fire.first[:photoUrl]).to be_a(String)

  end
end