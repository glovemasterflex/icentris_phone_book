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
      redirect_to contacts_path
    else
      render :new
    end
  end

  def edit
  end
end
