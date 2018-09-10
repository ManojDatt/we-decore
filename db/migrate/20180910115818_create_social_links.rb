class CreateSocialLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :social_links do |t|
      t.string :link_url
      t.string :link_name
      t.string :link_icon_class

      t.timestamps
    end
  end
end
