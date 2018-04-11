require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverseName = params[:name].reverse!
    "#{@reverseName}"
  end

  get "/square/:number" do
    @power = 2
    @numberToSquare = params[:number].to_i
    @result = (@numberToSquare**@power).to_s
    @result
  end



end
