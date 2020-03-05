class CreateExternalApis < ActiveRecord::Migration[6.0]
  def change
    create_table :external_apis do |t|
      t.string :weather
      t.string :pollen
      t.string :pollutants
      t.string :air_quality

      t.timestamps
    end
  end
end
