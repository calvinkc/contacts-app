class ContactsController < ApplicationController

  def index
    @contacts = Contact.all 
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
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


end
