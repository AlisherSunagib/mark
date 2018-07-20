class UniversityPull < ApplicationRecord
	has_many :universities
	validates :key, presence: true
	validates :name, presence: true
end
