class Api::ContactsController < ApplicationController
  def first_contact_action
    @contact = Contact.find(1)
    render 'first_contact_view.json.jbuilder'
  end

  def allcontacts
    @contacts = Contact.all
    render 'allcontactsview.json.jbuilder'
  end
end
