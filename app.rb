require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name]
    # binding.pry
    "#{@name.reverse}"
  end 

  get '/square/:number' do 
    @number = params[:number].to_i
    @square = @number * @number 
    "#{@square}"
  end 

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    # binding.pry
    @new_string = @phrase * @number
    "#{@new_string}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4= params[:word4]
    @word5 = params[:word5]
    # binding.pry
    @new_word = @word1+ " " + @word2 + " "+ @word3 + " " + @word4 + " " + @word5 + "."
    # binding.pry
    "#{@new_word}"
  end 

  get '/:operation/:number1/:number2' do 
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    # binding.pry

    if operation == 'add'
      solution = number1 + number2
      # binding.pry
      "#{solution.to_s}"
    elsif operation == "subtract"
      # binding.pry
      solution = number1 - number2
      "#{solution.to_s}"
    elsif operation == "multiply"
      # binding.pry
      solution = number1 * number2
      "#{solution.to_s}"
    else 
      solution = number1/number2
      "#{solution.to_s}"
    end 


  end 


end