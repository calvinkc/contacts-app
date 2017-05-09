Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/Contacts" => "contacts#contact_method"

  get "/new_contact_form" => "contacts#new_contact_form"
  
  post "/new_contact_result" => "contacts#new_contact_result"
  
 end
