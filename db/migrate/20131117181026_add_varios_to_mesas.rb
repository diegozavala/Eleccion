class AddVariosToMesas < ActiveRecord::Migration
  def change
    add_column :mesas, :browne, :integer
    add_column :mesas, :duran, :integer
    add_column :mesas, :freire, :integer
    add_column :mesas, :golborne, :integer
    add_column :mesas, :Lemuñir, :integer
    add_column :mesas, :orellana, :integer
    add_column :mesas, :ripetti, :integer
    add_column :mesas, :sule, :integer
    add_column :mesas, :teiller, :integer
  end
end
