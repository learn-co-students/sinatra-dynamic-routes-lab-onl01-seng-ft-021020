require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    params[:name].reverse!
  end
  
  get '/square/:number' do
    return (params[:number].to_i * params[:number].to_i).to_s
  end
  
  get '/say/:number/:phrase' do
    
    return params[:phrase] * params[:number].to_i
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    return result
  end
  
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i    
    result = 0
    if(operation == "add")
      result = n1 + n2
    elsif (operation == "subtract")
      result = n1 - n2
    elsif (operation == "multiply")
      result = n1 * n2
    elsif (operation == "divide")
      result = n1 / n2
    end
    
    return (result.to_s)
  end

end