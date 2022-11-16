class AddNombrelitsToChambres < ActiveRecord::Migration[7.0]
  def change
    add_column :chambres, :nombre_lits, :integer
  end
end
