class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    if omniauth.info.image.present?
      user.update_attribute(:image, omniauth.info.image)
    end
    redirect_to users_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
