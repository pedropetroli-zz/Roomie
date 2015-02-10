class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @reviews = Review.all.order("created_at DESC")
  end

  def new
    @review = Review.new
    @house = House.find(params[:house_id])
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @house = House.find(params[:house_id])
  end

  def update
    @review.update(review_params)
  end

  def destroy
    @review.destroy
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:user_id, :house_id, :renting_id, :rating_1, :rating_2)
    end
end
