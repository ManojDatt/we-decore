class BreakFast < ApplicationRecord
  belongs_to :food
  belongs_to :admin_user

  after_create  do
	$fcm 	
  end
end
