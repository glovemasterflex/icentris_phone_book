class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contacts = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :phone_number, :address)
    end
end
