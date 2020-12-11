class Member
  attr_reader :name,
              :affiliation

  def initialize(member_data)
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
    @name = member_data[:name]
    @affiliation = member_data[:affiliation]
  end

  def allies
    @allies.join('&')
  end

  def enemies
    @enemies.join('&')
  end
end
