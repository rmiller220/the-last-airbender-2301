class Affiliation
  def initialize(data)
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photo = data[:photoUrl]

  end
end