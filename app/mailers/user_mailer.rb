class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def change_password
    @user = params[:user]
    @url  = 'localhost:3000'
    mail(to: @user.email, subject: 'Change password here!')
  end
end