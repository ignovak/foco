class ReviewsController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @review = @project.reviews.build
  end
end
