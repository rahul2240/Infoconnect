class FacultiesController < ApplicationController
  before_action :set_faculty, only: [:show, :edit, :update, :destroy]
   before_action :logged_in_faculty, only: [:show, :edit, :change_profile, :change_profil]
  before_action :correct_faculty, only: [:edit,:update, :change_profile, :change_profil]

  # GET /faculties
  # GET /faculties.json
  def index
    @faculties = Faculty.all
  end

  # GET /faculties/1
  # GET /faculties/1.json
  def show
  end

  # GET /faculties/new
  def new
    @faculty = Faculty.new
  end

  # GET /faculties/1/edit
  def edit
  end

  # POST /faculties
  # POST /faculties.json
  def create
    @faculty = Faculty.new(faculty_params)

    respond_to do |format|
      if @faculty.save
        format.html { redirect_to microposts_path, notice: 'Faculty was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /faculties/1
  # PATCH/PUT /faculties/1.json
  def update
    respond_to do |format|
      if @faculty.update(faculty_params)
        format.html { redirect_to microposts_path, notice: 'Faculty was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end



  def change_profile
    @faculty = Faculty.find(params[:id])

  end

  def change_profil
      @faculty = Faculty.find(params[:id])
      respond_to do |format|
      if @faculty.update_attributes(profile_params)
        format.html { redirect_to microposts_path, notice: 'Faculty was successfully updated.' }
      else
        format.html { render :change_profile }
      end
    end
  end



  # DELETE /faculties/1
  # DELETE /faculties/1.json
  def destroy
    @faculty.destroy
    respond_to do |format|
      format.html { redirect_to faculties_url, notice: 'Faculty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty
      @faculty = Faculty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faculty_params
      params.require(:faculty).permit(:facultyname, :password, :password_confirmation)
    end
     def profile_params
        params.require(:faculty).permit(:firstname, :lastname, :email, :university_roll_no, :contact_no,
                            :address, :father_name, :mother_name)
    end

    def logged_in_faculty
      unless logged_in?

        redirect_to login_path
      end

    end

    def correct_faculty
      unless correct_user?

        redirect_to root_path
      end
    end

end
