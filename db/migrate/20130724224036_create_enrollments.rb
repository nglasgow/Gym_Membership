class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :type
      t.integer :user_id
      t.integer :training_id

      t.timestamps
    end
  end
end
