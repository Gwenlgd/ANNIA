class CreateChambres < ActiveRecord::Migration[7.0]
  def change
    create_table :chambres do |t|
      t.references :lits, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
