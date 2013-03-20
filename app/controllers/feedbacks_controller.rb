class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])
    if @feedback.save
      flash[:notice] = t('feedback.thank_you')
      redirect_to :root
    else
      render :new
    end
  end
end
