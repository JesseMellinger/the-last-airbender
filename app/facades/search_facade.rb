class SearchFacade
  def self.get_members(nation)
    json = AirbenderDataService.members_of_nation(nation)
    json.map do |member_data|
      Member.new(member_data)
    end
  end
end
