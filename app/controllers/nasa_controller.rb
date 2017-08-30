class NasaController < ApplicationController
  def image
  		response = HTTParty.get("https://api.nasa.gov/planetary/apod?api_key=XFeaGuValUV4p8DCnf76xdZfrbnUnmM82KUrchJL")
  		@result = JSON.parse(response.body)
  		
  end
end
