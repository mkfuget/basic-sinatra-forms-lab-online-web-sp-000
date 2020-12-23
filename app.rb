require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end 
  
  post '/newteam' do 
    @team_name = params["team_name"]
    @coach = params["coach"]
    @point_guard = params["point_guard"]
    @shooting_guard = params["shooting_guard"]
    @small_forward = params["small_forward"]
    @pf = params["power_forward"]
    @c = params["center"]
    
    erb :team
  end
end
