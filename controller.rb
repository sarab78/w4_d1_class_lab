require ('sinatra')
require( 'sinatra/contrib/all')
require_relative( './models/calculator')
also_reload( './models/*' )

get '/' do
  erb( :home)
end

get '/about_us' do
  erb( :about )
end


get '/add/:num1/:num2' do
  calculater = Calculator.new(params[:num1].to_i (),
  params[:num2].to_i())
  @calculation = calculator.add()
  erb( :result )
  # return "#{calculater.add()}"
end

get '/subtract/:num1/:num2' do
  calculater = Calculator.new(params[:num1].to_i(),
  params[:num2].to_i())
  @calculation = calculater.subtract()
  erb( :result )
   # return "#{calculater.subtract()}"
 end

 get '/multiply/:num1/:num2' do
   calculater = Calculator.new(params[:num1].to_i(),
   params[:num2].to_i())
   @calculation = calculater.multiply()
   erb( :result )
   # return " #{calculater.multiply()}"
 end

 get '/divide/:num1/:num2' do
   calculater = Calculator.new(params[:num1].to_f(),
    params[:num2].to_f())
    @calculation = calculater.divide()
    erb( :result )
    # return "#{calculater.divide()}"
  end
