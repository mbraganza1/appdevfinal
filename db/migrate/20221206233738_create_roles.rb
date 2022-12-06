class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :impact
      t.integer :player_id
      t.integer :moment_id

      t.timestamps
    end
  end
end
