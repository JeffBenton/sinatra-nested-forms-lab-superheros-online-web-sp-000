require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :create
    end
    
    post '/teams' do
      binding.pry
      @team = params[:team]
      @hero1 = params[:team][:heroes][0]
      erb :team
    end
    
end
