class AddVariosToResultados < ActiveRecord::Migration
  def change
    add_column :resultados, :browne, :integer
    add_column :resultados, :duran, :integer
    add_column :resultados, :freire, :integer
    add_column :resultados, :golborne, :integer
    add_column :resultados, :Lemuñir, :integer
    add_column :resultados, :orellana, :integer
    add_column :resultados, :ripetti, :integer
    add_column :resultados, :sule, :integer
    add_column :resultados, :teiller, :integer
  end
end
