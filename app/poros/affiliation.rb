class Affiliation
  attr_reader :allies,
              :enemies,
              :affiliation,
              :photo, 
              :name
  def initialize(data)

    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photo = data[:photoUrl]

  end
end