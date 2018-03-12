class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if user.nil?
      flash[:errors] = 'Invalid password or email'
      redirect_to new_session_url
    else
      log_in_user(user)
      flash[:notice] = 'Sucessfully logged in.'
      redirect_to bands_url
    end
  end

  def destroy
    log_out

    redirect_to new_session_url
  end
end
