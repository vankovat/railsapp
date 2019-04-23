class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :name
      t.integer :number
      t.text :comment

      t.timestamps
    end
  end
end
