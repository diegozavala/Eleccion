class CreateResultados < ActiveRecord::Migration
  def change
    create_table :resultados do |t|
      t.references :mesa, index: true
      t.references :candidato, index: true
      t.integer :votos

      t.timestamps
    end
  end
end
