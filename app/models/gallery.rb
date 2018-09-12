class Gallery < ApplicationRecord
  has_attached_file :image, :styles => { :medium => "555x370>", :thumb => "321x214#" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :service
  belongs_to :project
  scope :recomends, ->{where(recomended: true)}
end
