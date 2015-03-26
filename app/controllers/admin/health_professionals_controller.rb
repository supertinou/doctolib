class Admin::HealthProfessionalsController < AdminApplicationController
  before_action :set_health_professional, only: [:show, :edit, :update, :destroy]

  # GET /health_professionals
  def index
    @health_professionals = HealthProfessional.all
  end

  # GET /health_professionals/1
  def show
  end

  # GET /health_professionals/new
  def new
    @health_professional = HealthProfessional.new
  end

  # GET /health_professionals/1/edit
  def edit
  end

  # POST /health_professionals
  def create
    @health_professional = HealthProfessional.new(health_professional_params)

    if @health_professional.save
      redirect_to @health_professional, notice: 'Health professional was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health_professionals/1
  def update
    if @health_professional.update(health_professional_params)
      redirect_to @health_professional, notice: 'Health professional was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health_professionals/1
  def destroy
    @health_professional.destroy
    redirect_to health_professionals_url, notice: 'Health professional was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_professional
      @health_professional = HealthProfessional.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health_professional_params
      params.require(:health_professional).permit(:firstname, :lastname, :address)
    end
end
