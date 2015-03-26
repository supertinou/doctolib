class HealthProfessional < ActiveRecord::Base
	validates :firstname, :lastname, :address, presence: true
end
