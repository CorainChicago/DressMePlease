class CreateDressPreferencesTable < ActiveRecord::Migration
  def change
    create_table :dress_preferences do |t|
      t.integer :temp_coat
      t.integer :temp_jacket
      t.integer :precipitation_probability_umbrella
      t.integer :wind_speed_ponytail
      t.integer :temp_hat
      t.integer :precipitation_intensity_golashes
      t.integer :cloud_coverage_sunglasses
      t.integer :humidity_hair
      t.integer :humitdity_short_sleeves

      t.timestamps null: false
    end
  end
end
