class AddressController < ApplicationController
  def determine
  	if params[:address]
  		response = HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{params[:address]}")
  		@result = JSON.parse(response.body)
  		end
  end
end
