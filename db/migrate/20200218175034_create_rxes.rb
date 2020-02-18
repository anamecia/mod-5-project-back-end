class CreateRxes < ActiveRecord::Migration[6.0]
  def change
    create_table :rxes do |t|
      t.integer :user_id
      t.integer :medicine_id
      t.string :rescue
      t.integer :remaining_doses

      t.timestamps
    end
  end
end
