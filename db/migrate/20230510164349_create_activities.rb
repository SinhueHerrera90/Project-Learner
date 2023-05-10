class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.integer :location_id

      t.timestamps
    end
  end
end
