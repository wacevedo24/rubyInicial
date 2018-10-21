class Api::V1::Sessions::SaludosController < Devise::SessionsController
    require 'json_web_token'
    protect_from_forgery with: :null_session
    
    def crea_saludo
        render json: {saludo:"hola Mundo"}
    end

end    