require 'pry'
require_relative 'controller'

class Router
  attr_accessor :controller

  def initialize
    @controller = Controller.new
  end

  def perform

    puts "BIENVENUE DANS THE GOSSIP PROJECT"

    while true

      puts "Qu'est-ce que tu veux faire ?"
      puts "1 - Créer un gossip."
      puts "2 - Afficher tous les potins."
      puts "4 - Quitter l'app."

      params = gets.chomp.to_i

      case params
      when 1
        puts "Tu as choisi de créer un gossip."
        @controller.create_gossip
      when 2
        puts "Voici tous les potins dispo."
        @controller.index
      when 3
        puts "Supprimer un potins"
        @controller.delete
      when 4
        puts "Tu as choisi de nous quitter. A+"
        break
      else
        puts "Ce choix n'existe pas. Retente ta chance !"
      end
      
    end
  end

end

binding.pry