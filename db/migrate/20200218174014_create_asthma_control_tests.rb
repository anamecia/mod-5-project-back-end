class CreateAsthmaControlTests < ActiveRecord::Migration[6.0]
  def change
    create_table :asthma_control_tests do |t|
      t.integer :user_id
      t.integer :score

      t.timestamps
    end
  end
end
