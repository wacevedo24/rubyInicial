class PagesController < ApplicationController # < siginifica que hereda 
    def index #esto es un metodo 
        #UserNotifierMailer.send_signup_email.deliver   --- Enviar un mensaje de texto
    end
    def about 
        @users = User.all
    end

end         