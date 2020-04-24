require 'pry'
require 'csv'
require_relative 'controller'


class Gossip
  attr_reader :author, :content
  @@instance = []

  def initialize(author,content)
    @author = author
    @content = content
  end

  def save
    gossip_array = [@author, @content]
    CSV.open('../db/gossip.csv','a+')do |row|
      row << gossip_array
    end
  end

  def self.all 
    @@instance = CSV.read('../db/gossip.csv')
  end

  def self.delete(numéro)
    
  end

end

#binding.pry