class HealthProfessional < ActiveRecord::Base
	validates :firstname, :lastname, :address, presence: true
	has_and_belongs_to_many :medical_specialities, join_table: :health_professionals_specialities
end
