class CreateTransports < ActiveRecord::Migration[7.0]
  def change
    create_table :transports do |t|
      t.string :category
      t.string :ville
      t.string :rendezvous
      t.integer :place
      t.time :heure_arrivee
      t.date :date_arrivee
      t.time :heure_depart
      t.date :date_depart

      t.timestamps
    end
  end
end
