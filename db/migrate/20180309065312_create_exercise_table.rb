class CreateExerciseTable < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :description
      t.integer :plan_id
      t.integer :order

      t.timestamp
    end
  end
end
