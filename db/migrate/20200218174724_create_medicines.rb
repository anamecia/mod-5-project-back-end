class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :brand_name
      t.string :drug_name
      t.string :dosage
      t.string :group
      t.string :pharmaceutical_form
      t.integer :number_of_doses
      t.string :leaflet

      t.timestamps
    end
  end
end
