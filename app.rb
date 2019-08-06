require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    number_int = @number.to_i
    num_squared = number_int ** 2
    "#{num_squared.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    number_int = @number.to_i
    "#{@phrase}\n" * number_int
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @first_word = params[:word1]
    @second_word = params[:word2]
    @third_word = params[:word3]
    @fourth_word = params[:word4]
    @fifth_word = params[:word5]
    "#{@first_word} #{@second_word} #{@third_word} #{@fourth_word} #{@fifth_word}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @first_number = params[:number1]
    @second_number = params[:number2]
    sum = @first_number.to_i + @second_number.to_i
    difference = @first_number.to_i - @second_number.to_i
    product = @first_number.to_i * @second_number.to_i
    quotient = @first_number.to_i / @second_number.to_i
    case @operation
    when "add"
      "#{sum.to_s}"
    when "subtract"
      "#{difference.to_s}"
    when "multiply"
      "#{product.to_s}"
    when "divide"
      "#{quotient.to_s}"
    end
  end

end