class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.date :dob
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
