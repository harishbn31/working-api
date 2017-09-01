class GoogleMapController < ApplicationController
  def index

  	if params[:name1] && params[:name2]
  		response = HTTParty.get("http://maps.googleapis.com/maps/api/distancematrix/json?origins=#{params[:name1]}&destinations=#{params[:name2]}")
  		@result = JSON.parse(response.body)
  		end
   end
end
