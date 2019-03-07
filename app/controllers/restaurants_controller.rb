class RestaurantsController < ApplicationController
  # Let's fake a database records
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    @restaurants = RESTAURANTS.select { |id, restaurant| restaurant[:category] == params[:food_type]}
    # raise
    # @restaurants = Restaurant.all
  end
end
