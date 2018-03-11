class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :telegram_id
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.integer :age
      t.integer :plan_id
      t.integer :current_exercise_id
      t.string :status

      t.timestamps
    end
  end
end
