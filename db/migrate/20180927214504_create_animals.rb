class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :nombre , null:false 
      t.string :url_foto
     

      t.timestamps
    end
  end
end
