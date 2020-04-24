require 'pry'
require_relative 'gossip'
require_relative 'view'

class Controller
  attr_accessor :gossip, :view

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    @gossip = Gossip.new(params[:author], params[:content])
    @gossip.save
  end

  def index
    puts View.all(Gossip.all)
  end

  def delete

  end

end

#binding.pry