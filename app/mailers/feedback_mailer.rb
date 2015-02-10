class FeedbackMailer < ActionMailer::Base
  default from: "info@okamagroup.ru"

  def contact_form(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(to: 'info@okamagroup.ru', subject: 'Сообщение с сайта OKAMA-GRPOUP.RU')
  end

end
