require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      pirate_params = params[:pirate]
      ship_params   = params[:pirate][:ships]
      
      @pirate = Pirate.new(params[pirate])
      
      erb :'pirates/show'
    end

  end
end
