class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    final = Hash.new
    @@genres.each do |gen|
      if final.key?(gen)
        final[gen] += 1
      else
        final[gen] = 1
      end
    end
    final

  end

  def self.artist_count
    final1 = Hash.new
    @@artists.each do |singers|
      if final1.key?(singers)
        final1[singers] += 1
      else
        final1[singers] = 1
      end
    end
    final1

end
end
