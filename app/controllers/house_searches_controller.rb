class HouseSearchesController < ApplicationController
  before_action :set_house_search, only: [:show, :edit, :update, :destroy]
  befire_action :authenticate_user!

  respond_to :html

  def index
    @house_searches = HouseSearch.all
  end

  def show
    respond_with(@house_search)
  end

  def new
    @house_search = HouseSearch.new
    @renting = Renting.find(params[:house_id])
  end

  def edit
  end

  def create
    @house_search = HouseSearch.new(house_search_params)
    @house_search.researcher_id = current_user.id
    @renting = Renting.find(params[:house_id])
    
    @house_search.house = @renting.house_id
    @house_search.rental = @house.rental
  end

  def update
  end

  def destroy
    @house_search.destroy
    respond_with(@house_search)
  end

  private
    def set_house_search
      @house_search = HouseSearch.find(params[:id])
    end

    def house_search_params
      params.require(:house_search).permit(:house_id, :arrival, :departure, :total_amounth, :rental, :fee, :insurance)
    end
end
