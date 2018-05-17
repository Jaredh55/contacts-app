class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find(contact_id)
    render 'show.json.jbuilder'
  end

  def create
    @contact = Contact.new(
                        
                            first_name: params[:first_name],
                            middle_name: params[:middle_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            phone: params[:phone],
                            bio: params[:bio]
                            )
    @contact.save
    render 'show.json.jbuilder'
  end

  def update
    contact_id = params[:id]
    @contact = Contact.find(contact_id)

    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone = params[:phone] || @contact.phone
    @contact.bio = params[:bio] || @contact.bio


    @contact.save
    render 'show.json.jbuilder'
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find(contact_id)
    @contact.destroy
    render json: {message: "Contact removed."}
  end



  # def first_contact_action
  #   @contact = Contact.find(1)
  #   render 'first_contact_view.json.jbuilder'
  # end

  # def allcontacts
  #   @contacts = Contact.all
  #   render 'allcontactsview.json.jbuilder'
  # end
end
