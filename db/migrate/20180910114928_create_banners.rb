class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :image
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
