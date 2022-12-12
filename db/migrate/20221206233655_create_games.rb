class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.date :date
      t.text :notes
      t.string :image

      t.timestamps
    end
  end
end
