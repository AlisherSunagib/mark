class Speciality < ApplicationRecord
	belongs_to :university
	belongs_to :Speciality_pull
	has_many :disciplines
end
