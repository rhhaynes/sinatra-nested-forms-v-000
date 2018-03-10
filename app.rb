require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :'pirates/index'
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      ship_params = params[:pirate].delete(:ships)
      ship_params.each{|attributes| Ship.new(attributes)}
      @ships = Ship.all
      
      pirate_params = params[:pirate]
      @pirate = Pirate.new(pirate_params)
      
      erb :'pirates/show'
    end

  end
end
