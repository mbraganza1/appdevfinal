class CreatePredictions < ActiveRecord::Migration[6.0]
  def change
    create_table :predictions do |t|
      t.string :prediction
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
