class UserNotifierMailer < ApplicationMailer
    default :from => 'no_conteste@example.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email()
 
    mail( :to => "ingwacevedos@gmail.com",
    :subject => 'Correo Desde APP Ruby' )
  end
end
