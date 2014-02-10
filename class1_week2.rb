# 1. Have detailed requirements or specs in writen form
# 2. Extract Major Nouns => Classes
# 3. Extract Major Verbs => Instances methods
# 4. Group instance methods into classes

class Card
  attr_accessor :suit, :value

  def initialize(s, v)
    @suit = s
    @value = v
  end

  def to_s
    "This is the card! #{suit}, #{value}"
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7','8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    scramble!
  end

  def scramble!
    cards.shuffle!
  end

  def deal
    cards.pop
  end

end

class Player

end

class Dealer

end

class Blackjack
  attr_accessor :player, :dealer, :deck

  def initialize
    @player = Player.new("Bob")
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def run
    deal_cards
    show_flow
    player_turn
    dealer_turn
    who_won?

  end

end

game = Blackjack.new
game.run








## OOP in Ruby
## Classes and objects
## Method contain behaviors
## instance variables contain states
## objects are instantiated from classes, and contain states and behaviors
## class variables and methods
## compare with procedural
#
#
#class Dog
#  attr_accessor :name, :height, :weight
#
#  #class variable
#  @@count = 0
#
#  def self.total_dogs
#    "Total number of dogs: #{@@count}"
#  end
#
#  def initialize(n, h, w)
#    @name = n
#    @height = h
#    @weight = w
#    @@count += 1
#  end
#
#
#  #Don't use the self.name ... this is a GETTER
#  def speak
#    name + "bark!"
#  end
#
#  #getter
#  #def name
#  #  @name
#  #end
#  #def get_name
#  #  @name
#  #end
#
#  #setter
#  #def name=(new_name)
#  #  @name = new_name
#  #end
#  #def set_name=(new_name)
#  #  @name = new_name
#  #end
#
#
#
#  def info
#    "#{name} is #{height} tall and weighs #{weight} pounds"
#  end
#
#  #need to do a self. when setting the variables "SETTER"
#  def update_info(n, h, w)
#    self.name = n
#    self.height = h
#    self.weight = w
#  end
#end
#
#teddy = Dog.new('teddy', 3, 95)
#fido = Dog.new('fido', 1, 35)
#
#puts teddy.name
##puts fido.info
##puts teddy.get_name
##puts fido.get_name
#
#teddy.name = "Roosevelt"
##teddy.set_name = "Roosevelt"
#puts teddy.info
#teddy.update_info('Bob', 5, 105)
#puts teddy.info
##puts teddy.name
##puts teddy.height
##puts teddy.weight
#
#puts Dog.total_dogs






## INHERITANCE -
## class.ancestor displays the
#
#class Animal
#  attr_accessor :name
#
#  def initialize(n)
#    @name = n
#  end
#
#  def eat
#    "#{name} is eating."
#  end
#
#  def speak
#  "#{name} is speaking!"
#  end
#end
#
#class Mammal < Animal
#  def warm_blooded?
#    true
#  end
#end
#
## ...able is a set of behaviors, goes to any class
## Method lookup chain is reversed for Module
#module  Swimmable
#  def swim
#    "I'm swimming?"
#  end
#end
#
#module Fetchable
#  def fetch
#    "#{name} is fetching!"
#  end
#end
#
#class Dog < Mammal
#  include Swimmable
#  include Fetchable
#
#  def speak
#    "#{name} is barking"
#  end
#end
#
#class Cat < Mammal
#  def speak
#    "#{name} is meowing"
#  end
#end
#
#
#teddy = Dog.new('teddy')
#puts teddy.swim
#puts teddy.fetch
#puts teddy.warm_blooded?
#puts teddy.name
#puts teddy.eat
#puts teddy.fetch
#puts teddy.speak
#
#kitty = Cat.new('kitty')
#puts kitty.name
#puts kitty.eat
#puts kitty.speak
#
#puts Dog.ancestors
