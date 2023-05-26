require 'rails_helper'

RSpec.describe Affiliation do
  describe 'initialize' do
    it 'exists with attributes' do
      data = {name: "test1", allies: "TestA", enemies: "TestB", affiliation: "TestC", photoUrl: "TestD"}
      affiliation = Affiliation.new(data)

      expect(affiliation).to be_a(Affiliation)
      expect(affiliation.allies).to eq("TestA")
      expect(affiliation.enemies).to eq("TestB")
      expect(affiliation.affiliation).to eq("TestC")
      expect(affiliation.photo).to eq("TestD")
      expect(affiliation.name).to eq("test1")
      
    end
  end
end