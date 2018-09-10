class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :image
      t.string :designation
      t.string :introduction

      t.timestamps
    end
  end
end
