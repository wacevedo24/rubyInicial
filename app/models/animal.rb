class Animal < ApplicationRecord
    has_many :caracteristicas  

    validates :nombre, presence: true   # validar que el parametro nombre no  llegue vacio 


    def saludo 
        "Hola soy un #{self.nombre}!"
    end    
end



