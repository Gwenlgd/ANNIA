class DropTableChambre < ActiveRecord::Migration[7.0]
  def change
    drop_table :chambres
  end
end
