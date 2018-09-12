class Project < ApplicationRecord
	has_many :galleries, dependent: :destroy

	def to_s
		try(:customer_name) + " - "+try(:location)
	end
end
