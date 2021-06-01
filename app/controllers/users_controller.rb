class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id unless logged_in?
    redirect_to '/'
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/'
  end

  def update
    @user = User.find(params[:id])
    @user.update_attribute(:password, params[:password])
    redirect_to '/'
  end

  def password_change
  end

  def change_password_email
    UserMailer.with(user: current_user).change_password.deliver_later
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :admin)
  end

end
