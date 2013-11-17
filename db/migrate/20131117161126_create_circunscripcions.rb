class CreateCircunscripcions < ActiveRecord::Migration
  def change
    create_table :circunscripcions do |t|
      t.string :nombre
      t.references :comuna, index: true

      t.timestamps
    end
  end
end
