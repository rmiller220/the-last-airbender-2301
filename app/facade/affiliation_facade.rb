class AffiliationFacade
  def get_fire_nation_data
    data = AffiliationService.new.get_fire_affiliation_data
    data.map do |affiliation_data|
      Affiliation.new(affiliation_data)
    end
  end
end