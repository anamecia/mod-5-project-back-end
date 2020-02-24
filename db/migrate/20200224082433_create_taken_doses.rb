class CreateTakenDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :taken_doses do |t|
      t.integer :rx_id
      t.integer :count
      t.string :date 

      t.timestamps
    end
  end
end
