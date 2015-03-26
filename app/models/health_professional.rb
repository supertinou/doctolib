class HealthProfessional < ActiveRecord::Base
	validates :firstname, :lastname, :address,:medical_specialities, presence: true
	has_and_belongs_to_many :medical_specialities, join_table: :health_professionals_specialities
	geocoded_by :address
	after_validation :geocode 
end
