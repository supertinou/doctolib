class MedicalSpeciality < ActiveRecord::Base
	validates :name, presence: true
	has_and_belongs_to_many :health_professionals, join_table: :health_professionals_specialities
end
