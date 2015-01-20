class RentingsController < ApplicationController
  before_action :set_renting, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rentings = Renting.all
    respond_with(@rentings)
  end

  def show
    respond_with(@renting)
  end

  def new
    @renting = Renting.new
    respond_with(@renting)
  end

  def edit
  end

  def create
    @renting = Renting.new(renting_params)
    @renting.save
    respond_with(@renting)
  end

  def update
    @renting.update(renting_params)
    respond_with(@renting)
  end

  def destroy
    @renting.destroy
    respond_with(@renting)
  end

  private
    def set_renting
      @renting = Renting.find(params[:id])
    end

    def renting_params
      params.require(:renting).permit(:country, :state, :city)
    end
end
