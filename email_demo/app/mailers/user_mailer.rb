class UserMailer < ApplicationMailer
  default from: "admin@store_ial.com"

  def welcome_email(user)
    @user = user

    @url = "http://example.com/login"
    mail(to: @user.email, subject: "Here are your order details!")
    attachments['filename.jpg'] = File.read('/assets/images/filename.jpg')
  end
end
