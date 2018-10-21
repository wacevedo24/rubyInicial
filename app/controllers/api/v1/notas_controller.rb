class Api::V1::NotasController < ApplicationController
    def index
        render json: {mensaje: "Hola Mundo"}
    end
end        