class University < ApplicationRecord
	belongs_to :university_pull, :primary_key => "key", :foreign_key => "key"
	has_many :users
	has_many :specialities


	has_attached_file :mop
	validates_attachment :mop, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessing.document)}
	validates :mop, presence: true

	has_attached_file :ked
	validates_attachment :ked, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessing.document)}
	validates :ked, presence: true

	validates :key, presence: true
	validates :name, presence: true
end
