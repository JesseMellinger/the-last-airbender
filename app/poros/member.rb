class Member
  attr_reader :name,
              :affiliation,
              :photo

  def initialize(member_data)
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
    @name = member_data[:name]
    @affiliation = member_data[:affiliation]
    @photo = member_data[:photoUrl]
  end

  def allies
    @allies.length > 1 ? @allies.join(' & ') : @allies.join
  end

  def enemies
    @enemies.length > 1 ? @enemies.join(' & ') : @enemies.join
  end
end
