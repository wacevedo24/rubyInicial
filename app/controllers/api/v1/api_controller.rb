class Api::V1::ApiController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :authenticate!

    def authenticate!
      puts "Paso por Autenticacion"
      auth_header = request.headers['Authorization']
      token = auth_header.split('').last
      return true if JsonWebToken.decode(token)

    rescue # Es el try cash control de errores  
      render json: {error :"Error de Autenticacion del token"}
    end
end
