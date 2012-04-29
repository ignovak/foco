class ReviewsController < ApplicationController

  def show
  end

  def data
    data = Review.find(params[:id]).review_data.select([:time, :attention]).map {|d| [d.time, d.attention]}
    render json: data
  end
end
