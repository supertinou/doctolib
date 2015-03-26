require 'rails_helper'

RSpec.describe MedicalSpeciality, :type => :model do
  it { is_expected.to have_and_belong_to_many(:health_professionals) }
end
