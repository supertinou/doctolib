class Public::HealthProfessionalsController < PublicApplicationController

  # GET /health_professionals
  def index
    @health_professionals = HealthProfessional.includes(:medical_specialities).all
  end

end
