class WeEatController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
