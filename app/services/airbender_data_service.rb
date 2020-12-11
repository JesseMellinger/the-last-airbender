class AirbenderDataService
  def self.members_of_nation(nation)
    response = conn.get do |req|
      req.params['affiliation'] = "#{nation}"
    end
    a = parse_response(response)
    require "pry"; binding.pry
  end

  private
  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/characters")
  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
