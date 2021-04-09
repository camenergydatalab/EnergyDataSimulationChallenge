class GraphsController < ApplicationController
  before_action :set_house, only: :show

  def index
    @houses = House.all
  end

  def show
    @name = @house.first_name + ' ' + @house.last_name
    @datas = @house.datasets.pluck(:temperature, :daylight, :energy_production)
    @temperature = @datas.map(&:first).map(&:to_f).join(',')
    @daylight = @datas.map(&:second).map(&:to_f).join(',')
    @energy_production = @datas.map(&:third).join(',')
    @dates = @house.datasets.pluck(:year, :month)
    @date = ''
    @dates.each_with_index do |date, i|
      if i == 0
        @date += "#{date[0]}/#{date[1]}"
      else
        @date += ",#{date[0]}/#{date[1]}"
      end
    end
  end

  private
    def set_house
      @house = House.find(params[:id])
    end
end
