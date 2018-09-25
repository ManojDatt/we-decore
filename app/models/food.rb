class Food < ApplicationRecord
	enum key_labels: [:BREAKFAST, :LUNCH, :DINNER]
	has_attached_file :image, :styles => { :medium => "555x370>", :thumb => "321x214#" }
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    scope :breakfasts, ->{where(key_label: "0")}
    scope :lunches, ->{where(key_label: "1")}
    scope :dinners, ->{where(key_label: "2")}
    
end
