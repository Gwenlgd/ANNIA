class AddDrinksToRepas < ActiveRecord::Migration[7.0]
  def change
    add_column :repas, :drinks, :string
  end
end
