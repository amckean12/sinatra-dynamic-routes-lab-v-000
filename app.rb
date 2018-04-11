require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverseName = params[:name].reverse!
    "#{@reverseName}"
  end

  get "/square/:number" do
    @power = 2
    @squaredNumber = params[:num].to_i**@power
    "#{@squaredNumber}"
  end

end
