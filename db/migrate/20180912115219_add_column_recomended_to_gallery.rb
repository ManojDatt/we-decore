class AddColumnRecomendedToGallery < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :recomended, :boolean, default: false
  end
end
