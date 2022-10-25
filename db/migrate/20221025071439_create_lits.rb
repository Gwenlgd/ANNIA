class CreateLits < ActiveRecord::Migration[7.0]
  def change
    create_table :lits do |t|
      t.string :nombre_place

      t.timestamps
    end
  end
end
