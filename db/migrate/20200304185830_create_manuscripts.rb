class CreateManuscripts < ActiveRecord::Migration[6.0]
  def change
    create_table :manuscripts do |t|
      t.text :shelfmark

      t.timestamps
    end
  end
end
