require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do 
    phrase = ""
    num = params[:number].to_i
    num.times do
      phrase = phrase + params[:phrase]
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    phrase = ""
    params.each do |key, value|
      phrase = phrase + value + " " 
    end
    phrase[phrase.length-1] = "."
    phrase
  end

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    #binding.pry
    case params[:operation]
    when "add"
      "#{num1+num2}"
    when "subtract"
      "#{num1-num2}"
    when "multiply"
      "#{num1*num2}"
    when "divide"
      "#{num1/num2}"
    end
  end

end