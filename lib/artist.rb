require 'pry'

class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = Artist.new(name)
    song.save
    song
  end

end
