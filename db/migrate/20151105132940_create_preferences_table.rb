class CreatePreferencesTable < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.float :temp_coat
      t.float :temp_jacket
      t.float :precipitation_probability_umbrella
      t.float :wind_speed_ponytail
      t.float :temp_hat
      t.float :precipitation_intensity_golashes
      t.float :cloud_coverage_sunglasses
      t.float :humidity_hair
      t.float :humitdity_short_sleeves
      t.references :user

      t.timestamps null: false
    end
  end
end
