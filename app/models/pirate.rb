class Pirate
  attr_reader :name, :weight, :height
  PIRATES = []
  
  def self.all
    PIRATES
  end
  
  def initialize()
    PIRATES << self
  end

end
