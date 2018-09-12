class AddAttachmentLogoToAboutUs < ActiveRecord::Migration
  def self.up
    change_table :about_us do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :about_us, :logo
  end
end
