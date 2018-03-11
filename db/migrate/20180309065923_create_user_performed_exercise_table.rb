class CreateUserPerformedExerciseTable < ActiveRecord::Migration[5.1]
  def change
    create_table :performed_exercises do |t|
      t.references :plan, foreign_key: true
      t.references :exercise, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :is_performed

      t.timestamp
    end
  end
end
