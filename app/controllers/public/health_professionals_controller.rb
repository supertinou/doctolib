class Public::HealthProfessionalsController < PublicApplicationController

  # GET /health_professionals
  def index
    @health_professionals = HealthProfessional.includes(:medical_specialities).all
    @markers = Gmaps4rails.build_markers(@health_professionals) do |professional, marker|
                marker.lat professional.latitude
                marker.lng professional.longitude
                marker.json({ id: professional.id })
              end
  end

end
