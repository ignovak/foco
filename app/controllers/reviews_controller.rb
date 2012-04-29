class ReviewsController < ApplicationController

  def show
  end

  def data
    attrs = %w(time attention meditation)
    data = Review.find(params[:id]).review_data.select(attrs).map &:attributes
    render json: data
  end
end
