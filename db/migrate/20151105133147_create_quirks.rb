class CreateQuirks < ActiveRecord::Migration
  def change
    create_table :quirks do |t|
      t.string :quote
      t.string :weekday

      t.timestamps(null: false)
    end
  end
end
