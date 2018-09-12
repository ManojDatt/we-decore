class AddAttachmentPictureToAboutUs < ActiveRecord::Migration
  def self.up
    change_table :about_us do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :about_us, :picture
  end
end
