class Contact < ActiveRecord::Base
  validates_presence_of :sender, :contact_type, :body
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  after_create :send_contact_form

  TYPE_CONTACT = [[I18n.t("select.questions"), "questions"], [I18n.t("select.error"), "error"], [I18n.t("select.improving"), "improving"], [I18n.t("select.advertising"), "advertising"]]

  def send_contact_form
    Notifer.send_contact_form(self).deliver
  end
end
