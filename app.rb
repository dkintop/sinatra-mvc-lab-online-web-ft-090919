require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

get '/' do 
erb :user_input
end

post '/piglatinize' do 
    user_word = params[:user_phrase]
    pig = PigLatinizer.new
    @pig_latinized_word = pig.piglatinize(user_word)
 
    erb :piglatinize
end

end