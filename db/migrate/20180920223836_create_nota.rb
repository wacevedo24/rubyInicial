class CreateNota < ActiveRecord::Migration[5.2]
  def change
    create_table :nota do |t|
      t.string :titulo
      t.string :descripcion

      t.timestamps
    end
  end
end
