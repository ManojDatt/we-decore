class Dinner < ApplicationRecord
  belongs_to :food
  belongs_to :admin_user
end
