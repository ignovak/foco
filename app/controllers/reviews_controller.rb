class ReviewsController < ApplicationController

  def show

  end

  def new
    @project = Project.find(params[:project_id])
    @review = @project.reviews.build
  end

  def create
    review = current_user.reviews.create(params[:review])
    $record_on = true
    redirect_to project_review_path(review.project_id, review.id)
  end
end
