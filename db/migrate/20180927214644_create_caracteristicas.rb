class CreateCaracteristicas < ActiveRecord::Migration[5.2]
  def change
    create_table :caracteristicas do |t|
      t.string :titulo , null:false
      t.string :descripcion
      t.references :animal

      t.timestamps
    end
  end
end
