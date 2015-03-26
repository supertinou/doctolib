require 'rails_helper'

RSpec.describe HealthProfessional, :type => :model do
  it { is_expected.to have_and_belong_to_many(:medical_specialities) }
end
