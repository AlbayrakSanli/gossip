require 'pry'
require_relative 'controller'

class View
  attr_accessor :author, :content

  def create_gossip
    puts "Il faut écrire le contenu de ton Gossip, ici !"
    @content = gets.chomp

    puts "Signe ton contenu !"
    @author = gets.chomp

    return params =  { content: @content, author: @author }
  end

  def self.all(all_gossip)
    params = []
    all_gossip.length.times do |i|
      params <<  { content: all_gossip[i][1], author: all_gossip[i][0] }
    end
    return params
  end

end