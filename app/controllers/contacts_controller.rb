class ContactsController < ApplicationController

  def index
    @contacts = Contact.all 
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.html.erb"
  end

  def create
    @new_contact = Contact.create(
      first: params[:first], 
      last: params[:last],
      relationship: params[:relationship],
      number: params[:number],
      email: params[:email]
      )
    render "create.html.erb"
  end

  def edit
    @contact = Contact.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(
      first: params[:first], 
      last: params[:last],
      relationship: params[:relationship],
      number: params[:number],
      email: params[:email]
      )
    render "update.html.erb"
  end

  def destroy
      
  end  
end
