class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.references :circunscripcion, index: true
      t.string :nombre

      t.timestamps
    end
  end
end
