class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def invite_user
    @user = User.invite!(:email => params[:user][:email], :name => params[:user][:name])
    render :json => @user
  end
end
