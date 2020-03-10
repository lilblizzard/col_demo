class CreateQuires < ActiveRecord::Migration[6.0]
  def change
    create_table :quires do |t|
      t.integer :quire_number
      t.references :manuscript, null: false, foreign_key: true

      t.timestamps
    end
  end
end
