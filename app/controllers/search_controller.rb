class SearchController < ApplicationController
  def index
    @facade = AffiliationFacade.new.get_fire_nation_data

  end
end