class AddLocalToMesa < ActiveRecord::Migration
  def change
    add_reference :mesas, :local, index: true
  end
end
