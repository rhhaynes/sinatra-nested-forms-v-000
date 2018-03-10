class Ship
  attr_accessor :name, :type, :booty
  SHIPS = []
  
  def self.all
    SHIPS
  end
  
  def self.clear
    SHIPS.clear
  end
  
  def initialize(attributes)
    attributes.each{|k,v| self.send("#{k}=",v)}
    SHIPS << self
  end
end
