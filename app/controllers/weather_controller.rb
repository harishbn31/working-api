class WeatherController < ApplicationController
  def search
  	if params[:name]
  		response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{params[:name]}&appid=b62328f61d5e6ecd96a462e880e903e3&units=metric")
  		@result = JSON.parse(response.body)
  		end
  end
end
