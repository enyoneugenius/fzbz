require 'sinatra'
require "sinatra/reloader"
# require 'sinatra/reloader'

get '/' do
  erb(:index, {layout: :app_layout})
end

post '/fizzbuzz' do
  @Fz = params[:Fizz].to_i
  @Bz = params[:Buzz].to_i
  @Result = []
  if @Fz != 0 && @Bz != 0
    for i in 1..100 do
      if i % @Fz == 0
        if i % @Bz == 0
          @Result << "FizzBuzz"
        else
          @Result << "Fizz"
        end
      elsif i % @Bz == 0
        @Result << "Buzz"
      else
        @Result << i
      end
    end
  else
    @Result = ["Please enter only number between 1 to 100"]
  end
  erb(:index, {layout: :app_layout})
end
