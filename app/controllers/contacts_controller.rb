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
      middle: params[:middle],
      last: params[:last],
      relationship: params[:relationship],
      bio: params[:bio],
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
      middle: params[:middle],
      last: params[:last],
      relationship: params[:relationship],
      bio: params[:bio],
      number: params[:number],
      email: params[:email]
      )
    render "update.html.erb"
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    render "destroy.html.erb"
  end  

  def coordinates(string)
    @coordinates = Geocoder.coordinates(string)
# Ex: “1441 W Carmen Ave, Chicago, IL”). And coordinates is an array of latitude and longitude.
    
  end


end
