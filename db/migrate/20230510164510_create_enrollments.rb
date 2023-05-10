class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|
      t.integer :user_id
      t.integer :activity_id
      t.string :role

      t.timestamps
    end
  end
end
