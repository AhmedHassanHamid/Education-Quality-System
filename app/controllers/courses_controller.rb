class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index,:show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /courses or /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1 or /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    # course = Course.new
    @course = current_user.courses.build
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses or /courses.json
  def create
    
    @course = current_user.courses.build(course_params)
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: "Course was successfully created." }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: "Course was successfully updated." }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: "Course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @course = current_user.courses.find_by(id: params[:id])
    redirect_to courses_path, notice: "Not Authorized" if @course.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:Course_nameL, :Hours, :Semester, :skills_ku1,:skills_ku2,:skills_ku3,:skills_ku4,:skills_ku5,:skills_ku6,:skills_ku7,:skills_ku8,:skills_ku9,:skills_i1,:skills_i2,:skills_i3,:skills_i4,:skills_i5,:skills_i6,:skills_i7,:skills_pp1,:skills_pp2,:skills_pp3,:skills_pp4,:skills_pp5,:skills_gt1,:skills_gt2,:skills_gt3,:skills_gt4,:skills_gt5, :user_id)
    end




end
