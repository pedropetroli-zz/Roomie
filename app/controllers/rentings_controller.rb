class RentingsController < ApplicationController
  before_action :set_renting, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]

  respond_to :html

  def rentals
    @rentings = Renting.all.where(host: current_user).order("created_at DESC")
  end

  def hires
    @rentings = Renting.all.where(guest: current_user).order("created_at DESC")
  end
  
  def index
    @rentings = Renting.all
    respond_with(@rentings)
  end

  def show
    respond_with(@renting)
  end

  def new
    @renting = Renting.new
    @house = House.find(params[:house_id])

    #respond_with(@renting)
  end

  def create
    @renting = Renting.new(renting_params)
    @house = House.find(params[:house_id])
    @host = @house.user
    
    @renting.house_id = @house.id
    @renting.guest_id = current_user.id
    @renting.host_id = @host.id 

    respond_to do |format|
      if @renting.save
        format.html { redirect_to root_url, notice: 'Your renting reservation is made.' }
        format.json { render :show, status: :created, location: @renting }
      else
        format.html { render :new }
        format.json { render json: @renting.errors, status: :unprocessable_entity }
      end
    end
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
      params.require(:renting).permit(:arrival, :departure, :insurance, :rent_rate, :total_rental, :fee, :host_amount)
    end
end
