class Ship
  attr_reader :name, :type, :booty
  SHIPS = []
  
  def self.all
    SHIPS
  end
  
  def self.clear
    SHIPS = []
  end
  
  def initialize()
    SHIPS << self
  end
end