class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      redirect_to new_contacts_path, :notice => I18n.t("notice.contact_save")
    else
      render :action => "new"
    end
  end
end
