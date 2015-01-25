class RentingsController < ApplicationController
  before_action :set_renting, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]

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
    @house = House.find(params[:house_id])

    respond_with(@renting)
  end

  def edit
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
        format.html { redirect_to root_url, notice: 'Renting order successfuly created.' }
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
      params.require(:renting).permit(:country, :state, :city)
    end
end
