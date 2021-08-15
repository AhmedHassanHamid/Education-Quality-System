class CourseSkillsController < ApplicationController
  before_action :set_course_skill, only: %i[ show edit update destroy ]

  # GET /course_skills or /course_skills.json
  def index
    @course_skills = CourseSkill.all
  end

  # GET /course_skills/1 or /course_skills/1.json
  def show
  end

  # GET /course_skills/new
  def new
    @course_skill = CourseSkill.new
  end

  # GET /course_skills/1/edit
  def edit
  end

  # POST /course_skills or /course_skills.json
  def create
    @course_skill = CourseSkill.new(course_skill_params)

    respond_to do |format|
      if @course_skill.save
        format.html { redirect_to @course_skill, notice: "Course skill was successfully created." }
        format.json { render :show, status: :created, location: @course_skill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_skills/1 or /course_skills/1.json
  def update
    respond_to do |format|
      if @course_skill.update(course_skill_params)
        format.html { redirect_to @course_skill, notice: "Course skill was successfully updated." }
        format.json { render :show, status: :ok, location: @course_skill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_skills/1 or /course_skills/1.json
  def destroy
    @course_skill.destroy
    respond_to do |format|
      format.html { redirect_to course_skills_url, notice: "Course skill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_skill
      @course_skill = CourseSkill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_skill_params
      params.require(:course_skill).permit(:course_code, :skills, :User_id)
    end
end
