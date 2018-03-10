require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      pirate_params = [ params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height] ]
      
      @pirate = Pirate.new(params[pirate])
      
      erb :'pirates/show'
    end

  end
end
