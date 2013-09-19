require 'sinatra'
require_relative 'fizzBuzz'

get ('/') do 
  erb :index
end

# get ('/:number') do |number|
#   @number = params[number]
#   erb :number
# end



get ('/fizzbuzz') do 
  @number = params[:number]
  fizz = FizzBuzz.new 
  @result = fizz.fizzit(@number.to_i)
  erb :fizzbuzz
end