class UsersController < ApplicationController
  
  def new
    render "new.html.erb"
  end

  def create
    user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "User created!"
      redirect_to "/"
    else
      flash[:warning] = "Invalid email/pass"
      redirect_to "/signup"
    end
  end


end
