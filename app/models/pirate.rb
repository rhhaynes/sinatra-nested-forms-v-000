class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []
  
  def self.all
    PIRATES
  end
  
  def initialize(attributes)
    attributes.each{|k,v| self.send("#{k}=",v)}
    PIRATES << self
  end

end
