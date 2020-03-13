require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @analyzed_text = PigLatinizer.new(params[:user_phrase])
    erb :result
  end
end
