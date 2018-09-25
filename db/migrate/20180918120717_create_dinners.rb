class CreateDinners < ActiveRecord::Migration[5.0]
  def change
    create_table :dinners do |t|
      t.references :food, foreign_key: true
      t.string :message
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end
