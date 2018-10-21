module Api
  module V1
    class AnimalsController < ApiController
      def index
        @animales = Animal.all
        @animal = Animal.new
      end

      def show
        @animal = Animal.find(params[:id])
      end

      def update
        animal = Animal.find(params[:id])
        if animal.update(animal_params)
          redirect_to animal
        else
          render :show
        end
      end

      def create
        animal = Animal.new(animal_params)
        if animal.save
          redirect_to animals_path
        else
          render :index
        end
      end

      def destroy
        animal = Animal.find(params[:id])
        animal.destroy
        redirect_to animals_path, alert: 'Se elimino'
      end

      private

      def animal_params
        params.require(:animal).permit(:nombre, :url_foto)
      end
    end
  end
end
