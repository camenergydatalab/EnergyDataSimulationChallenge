class ShowController < ApplicationController
  def index
    @city = House.joins(:energies).group("houses.city").select("houses.city")
  end
end
