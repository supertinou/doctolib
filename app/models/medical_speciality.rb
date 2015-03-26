class MedicalSpeciality < ActiveRecord::Base
	validates :name, presence: true
end
