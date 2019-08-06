require_relative 'config/environment'

class App < Sinatra::Base


  get '/reversename/:name' do 
       rev_name = params[:name]
       "#{rev_name.reverse}"
  end

  get '/square/:number' do
       sq_num = params[:number]
       "#{sq_num.to_i*sq_num.to_i}"
  end

  get '/say/:number/:phrase' do
    x = ""
    num= params[:number].to_i
    phrase = params[:phrase]

    num.times do
      x += phrase
    end

    x
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   w1 = params[:word1]
   w2 = params[:word2]
   w3 = params[:word3] 
   w4 = params[:word4] 
   w5 = params[:word5]
     "#{w1} #{w2} #{w3} #{w4} #{w5}."
      
  end

  get '/:operation/:number1/:number2' do
       op = params[:operation]
       num1 = params[:number1].to_i
       num2 = params[:number2].to_i

       
       
  case op
      
  when "add" 
    "#{(num1 + num2)}"
         
  when "subtract" 
    "#{(num1-num2)}"

  when "multiply" 
    "#{(num1*num2)}"
         
  when "divide"
  "#{(num1/num2)}"
         
       
  end
end



end