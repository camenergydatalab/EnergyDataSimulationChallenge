class ToppagesController < ApplicationController
  def index
   @house_all = House.all
   @houses2 = House.joins(:energies).group("houses.firstname")
   @firstname2 = @houses2.select("houses.firstname")
   @ene_sum2 = @firstname2.select("energies.energy_production").sum(:energy_production).values
   @ene_cou2 = @firstname2.select("energies.energy_production").count(:energy_production).values
  end
end
