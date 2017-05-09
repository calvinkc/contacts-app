class ContactsController < ApplicationController

  def contact_method
    @contact = Contact.last #returns has
    @contacts = Contact.all #ret ary of has
    #@contact = Contact.all.sample
    render "contacts.html.erb"
  end

  def new_contact_form
    render "new_contact_form.html.erb"
  end

  def new_contact_result
    @new_contact = Contact.create(
      first: params[:contact_first], 
      last: params[:contact_last]
      )
    render "new_contact_result.html.erb"
  end


end
