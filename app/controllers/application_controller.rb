require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do 
        erb :'super_hero'
    end 

    post '/teams' do 
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]

        @hero_1_name = params[:team][:hero_1][0][:name]
        @hero_1_power = params[:team][:hero_1][0][:power]
        @hero_1_bio = params[:team][:hero_1][0][:bio]

        @hero_2_name = params[:team][:hero_2][0][:name]
        @hero_2_power = params[:team][:hero_2][0][:power]
        @hero_2_bio = params[:team][:hero_2][0][:bio]

        @hero_3_name = params[:team][:hero_3][0][:name]
        @hero_3_power = params[:team][:hero_3][0][:power]
        @hero_3_bio = params[:team][:hero_3][0][:bio]


        # binding.pry
        erb :'team'
 
    end 


end
