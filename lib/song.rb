require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  # artist cannot be changed, it can be read
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@songs = []
  # class variable is empty and gets bigger as a new instance is created and pushed into class variable 

  # def initialize
  #   self.class.all << self
  #   # every new song-instance is pushed into class variable
  # end

  def self.all
    @@songs
    # returns songs or song from our class variable
  end

  def artist=(artist)
    @artist = artist
  end
end
