class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if (self.all.find {|artist| artist == name})
      self.all.find {|artist| artist == name}
    else
      self.new(name).tap {|artist| artist.save}
    end
  end

  def save
    @all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
