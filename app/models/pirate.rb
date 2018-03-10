class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []
  
  def self.all
    PIRATES
  end
  
  def initialize()
    attributes.each do |k,v|
      self.send("#{k}=",v)
    end
    PIRATES << self
  end

end
