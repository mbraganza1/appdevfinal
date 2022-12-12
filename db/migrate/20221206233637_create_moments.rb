class CreateMoments < ActiveRecord::Migration[6.0]
  def change
    create_table :moments do |t|
      t.string :title
      t.integer :time
      t.integer :game_id
      t.text :caption
      t.string :image

      t.timestamps
    end
  end
end
