class NetworkController < ApplicationController
  def create
  	user = current_user.from_omniauth(request.env['omniauth.auth'])
    flash[:success] = "synced successfully"
    redirect_to root_url
  end
end
