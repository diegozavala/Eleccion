class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :nombre
      t.references :circunscripcion, index: true

      t.timestamps
    end
  end
end
