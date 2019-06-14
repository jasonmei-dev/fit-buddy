class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :duration_mins
      t.integer :user_id
      t.boolean :share_status, default: 0

      t.timestamps
    end
  end
end
