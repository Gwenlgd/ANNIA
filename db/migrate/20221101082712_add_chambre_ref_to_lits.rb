class AddChambreRefToLits < ActiveRecord::Migration[7.0]
  def change
    add_reference :lits, :chambres, index: true
  end
end
