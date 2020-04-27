require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable 
  attr_accessor :name
  attr_reader :artist
  

  @@songs = []

  def initialize
    self.class.all << self
end

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
