class EnrollmentFormsController < ApplicationController
  before_action :set_enrollment_form, only: [:show, :edit, :update, :destroy]

  # GET /enrollment_forms
  # GET /enrollment_forms.json
  def index
    @enrollment_forms = EnrollmentForm.all
  end

  # GET /enrollment_forms/1
  # GET /enrollment_forms/1.json
  def show
  end

  # GET /enrollment_forms/new
  def new
    @enrollment_form = EnrollmentForm.new
  end

  # GET /enrollment_forms/1/edit
  def edit
  end

  # POST /enrollment_forms
  # POST /enrollment_forms.json
  def create
    @enrollment_form = EnrollmentForm.new(enrollment_form_params)

    respond_to do |format|
      if @enrollment_form.save
        format.html { redirect_to @enrollment_form, notice: 'Enrollment form was successfully created.' }
        format.json { render :show, status: :created, location: @enrollment_form }
      else
        format.html { render :new }
        format.json { render json: @enrollment_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollment_forms/1
  # PATCH/PUT /enrollment_forms/1.json
  def update
    respond_to do |format|
      if @enrollment_form.update(enrollment_form_params)
        format.html { redirect_to @enrollment_form, notice: 'Enrollment form was successfully updated.' }
        format.json { render :show, status: :ok, location: @enrollment_form }
      else
        format.html { render :edit }
        format.json { render json: @enrollment_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollment_forms/1
  # DELETE /enrollment_forms/1.json
  def destroy
    @enrollment_form.destroy
    respond_to do |format|
      format.html { redirect_to enrollment_forms_url, notice: 'Enrollment form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment_form
      @enrollment_form = EnrollmentForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrollment_form_params
      params.require(:enrollment_form).permit(:middle_name, :last_name, :branch, :reg_no, :roll_no, :semester, :blood_group, :nationality, :dob, :address, :state, :pincode, :parent_name, :parent_phone, :parent_email, :phone, :email_id, :language, :highest_education, :marks, :year_of_study, :achievement_ncc, :achievement_sport, :achievement_art, :achievement_other, :fill_place, :fill_date)
    end
end
