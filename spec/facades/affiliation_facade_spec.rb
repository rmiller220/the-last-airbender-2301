require 'rails_helper'

RSpec.describe AffiliationFacade do
  it 'can get fire nation data' do
    facade = AffiliationFacade.new

    expect(facade.get_fire_nation_data).to be_an(Array)
    expect(facade.get_fire_nation_data.count).to eq(97)
    expect(facade.get_fire_nation_data.first).to be_a(Affiliation)
  end
end