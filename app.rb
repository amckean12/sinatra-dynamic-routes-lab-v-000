require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverseName = params[:name].reverse!
    "#{@reverseName}"
  end

  get "/square/:number" do
    power = 2
    numberToSquare = params[:number].to_i
    result = (numberToSquare**power).to_s
    result
  end

  get "/say/:number/:phrase" do
    numberOfTimes = params[:number].to_i
    phraseToRepeat = params[:phrase]
    repeatedPhrase = (phraseToRepeat * numberOfTimes)
    repeatedPhrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    sentence = "#{word1} #{word2} #{word3} #{word4} #{word5}."
    sentence
  end






end
