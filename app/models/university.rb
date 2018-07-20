class University < ApplicationRecord
	belongs_to :university_pull
	has_many :users
	has_many :specialities
end
