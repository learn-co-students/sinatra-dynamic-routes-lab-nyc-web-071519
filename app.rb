require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversedname = params[:name]
    "#{@reversedname.reverse}"
  end

  get '/square/:number' do
    @squarednumber = params[:number].to_i
    @squared = @squarednumber * @squarednumber
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
      thismany = params[:number].to_i
      phrase = params[:phrase]
      print_this = ''
        thismany.times do 
         print_this += "#{phrase}\n"
        end
      print_this
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    symbol = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if symbol == 'add'
      result = num1 + num2
    elsif symbol == 'subtract'
      result = num1 - num2
    elsif symbol == 'multiply'
      result = num1 * num2
    elsif symbol == 'divide'
      result = num1 / num2
    else
    "Please enter a valid operation"
    end
    "#{result.to_s}"
  end

end