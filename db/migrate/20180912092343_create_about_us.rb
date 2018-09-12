class CreateAboutUs < ActiveRecord::Migration[5.0]
  def change
    create_table :about_us do |t|
      t.string :title
      t.text :message
      t.string :picture
      t.string :logo

      t.timestamps
    end
  end
end
