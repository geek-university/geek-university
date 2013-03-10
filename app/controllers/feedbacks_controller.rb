class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])
    if @feedback.save
      redirect_to :root
    else
      render :new
    end
  end
end
