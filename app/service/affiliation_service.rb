class AffiliationService
  def get_fire_affiliation_data
    get_url("api/v1/characters?perPage=100&affiliation=Fire+Nation")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev/') do |faraday|
      faraday.headers = { 'Content-Type' => 'application/json' }
    end
  end
end
