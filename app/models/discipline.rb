class Discipline < ApplicationRecord
	has_one :estimation
	#belongs_to :User, :primary_key => "email", :foreign_key => "user"
	#belongs_to :speciality
	#belongs_to :university, :primary_key => "key", :foreign_key => "university"
	validates :name, presence: true
	

	has_attached_file :syllabus			 
	validates_attachment :syllabus, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessing.document)}
	validates :syllabus, presence: true

	has_attached_file :rup	 
	validates_attachment :rup, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessing.document)}
	validates :rup, presence: true
end
