class CreateCabanes < ActiveRecord::Migration[7.0]
  def change
    create_table :cabanes do |t|
      t.string :name
      t.references :chambre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
