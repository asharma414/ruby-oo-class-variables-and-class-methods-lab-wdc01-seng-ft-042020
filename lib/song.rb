require 'pry'
class Song

    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@all = []

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@all << self
    end

    def self.count
        @@count
    end

    def self.artists
        arr = @@artists.uniq
    end

    def self.genres
        arr = @@genres.uniq
    end

    def self.genre_count
        hash = Hash.new(0)
        @@genres.map {|genre| hash[genre] += 1 }
        hash 
    end

    def self.artist_count
        hash = Hash.new(0)
        @@artists.map {|artist| hash[artist] += 1 }
        hash 
    end

end

