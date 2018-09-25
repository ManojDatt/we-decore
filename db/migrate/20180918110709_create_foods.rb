class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :key_label
      t.string :image
      t.string :name
      t.string :discription

      t.timestamps
    end
  end
end
