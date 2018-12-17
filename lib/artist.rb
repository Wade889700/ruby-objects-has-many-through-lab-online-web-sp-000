class Artist
  attr_reader :name, :genres, :songs
  @@all = []

  def initialize(name)
    @name =name
    @@all << self
    @songs = []
    @genres = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name,self, genre)
    @songs << song
    @genres << genre
    song
  end
 end
