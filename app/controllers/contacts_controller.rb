class ContactsController < ApplicationController

  def index
    @contact = Contact.last #returns has
    @contacts = Contact.all #ret ary of has
    #@contact = Contact.all.sample
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @new_contact = Contact.create(
      first: params[:contact_first], 
      last: params[:contact_last]
      )
    render "create.html.erb"
  end


end
