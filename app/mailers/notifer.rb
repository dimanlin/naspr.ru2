class Notifer < ActionMailer::Base
  default :from => "info@naspr.ru"

  def send_contact_form(contact_form)
    @contact_form = contact_form
    mail :to => "devandart@ya.ru", :subject => t("mail.subjects.new_contact")
  end

end
