class CreatePlanTable < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :name

      t.timestamp
    end
  end
end
