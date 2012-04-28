class ReviewsController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @review = @project.reviews.build
  end

  def create
    current_user.reviews.create(params[:review])

    render text: params[:review]
  end
end
