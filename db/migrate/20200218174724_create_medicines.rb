class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :brand_name
      t.string :drug_name, array:true
      t.string :dosage
      t.string :group, array:true
      t.string :pharmaceutical_form
      t.integer :number_of_doses, array:true 
      t.string :leaflet

      t.timestamps
    end
  end
end
