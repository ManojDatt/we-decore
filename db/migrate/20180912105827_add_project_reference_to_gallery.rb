class AddProjectReferenceToGallery < ActiveRecord::Migration[5.0]
  def change
    add_reference :galleries, :project, foreign_key: true
  end
end
