class CreateRepas < ActiveRecord::Migration[7.0]
  def change
    create_table :repas do |t|
      t.string :items
      t.string :allergies
      t.integer :quantities
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
