require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_phrase = params[:user_phrase]
    @analyzed_text = PigLatinizer.new
    erb :result
  end
end
