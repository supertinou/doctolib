class Admin::MedicalSpecialitiesController < AdminApplicationController
  before_action :set_medical_speciality, only: [:show, :edit, :update, :destroy]

  # GET /medical_specialities
  def index
    @medical_specialities = MedicalSpeciality.all
  end

  # GET /medical_specialities/1
  def show
  end

  # GET /medical_specialities/new
  def new
    @medical_speciality = MedicalSpeciality.new
  end

  # GET /medical_specialities/1/edit
  def edit
  end

  # POST /medical_specialities
  def create
    @medical_speciality = MedicalSpeciality.new(medical_speciality_params)

    if @medical_speciality.save
      redirect_to @medical_speciality, notice: 'Medical speciality was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /medical_specialities/1
  def update
    if @medical_speciality.update(medical_speciality_params)
      redirect_to @medical_speciality, notice: 'Medical speciality was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /medical_specialities/1
  def destroy
    @medical_speciality.destroy
    redirect_to medical_specialities_url, notice: 'Medical speciality was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_speciality
      @medical_speciality = MedicalSpeciality.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medical_speciality_params
      params.require(:medical_speciality).permit(:name)
    end
end
