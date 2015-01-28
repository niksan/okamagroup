class FeedbackMailer < ActionMailer::Base
  default from: "info@okamagroup.ru"

  def contact_form(name, email, body)
    @name = name
    @email = email
    @body = body
  end

end
