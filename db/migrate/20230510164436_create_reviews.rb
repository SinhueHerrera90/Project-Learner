class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :activities_id
      t.text :content
      t.integer :enrollment_id
      t.integer :location_id

      t.timestamps
    end
  end
end
