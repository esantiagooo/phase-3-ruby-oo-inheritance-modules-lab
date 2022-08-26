require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@artists = []

  def initialize
    super
    # the super keyword will use the code in the Memorable InstanceMethod module including additonal code within the body.
   @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
