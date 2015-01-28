class FeedbackController < ApplicationController

  def create
    FeedbackMailer.contact_form(params[:feedback][:name], params[:feedback][:email], params[:feedback][:body]).deliver
    redirect_to contacts_path
  end

end
