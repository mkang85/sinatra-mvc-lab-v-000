require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @piggedtext = PigLatinizer.new(params[:string])
    erb :piglatinize
  end

end
