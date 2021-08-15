class QualificationTsController < ApplicationController
  before_action :set_qualification_t, only: %i[ show destroy ]
  before_action :authenticate_user!, except: [:index, :show ,:destroy]
before_action :correct_user, only: [:edit ]
  # GET /qualification_ts or /qualification_ts.json
  def index
    @qualification_ts = QualificationT.all
  end

  # GET /qualification_ts/1 or /qualification_ts/1.json
  def show
  end

  # GET /qualification_ts/new
  def new
    @qualification_t = current_user.qualification_ts.build
  end

  # GET /qualification_ts/1/edit
  def edit
  end

  # POST /qualification_ts or /qualification_ts.json
  def create
    @qualification_t = current_user.qualification_ts.build(qualification_t_params)

    respond_to do |format|
      if @qualification_t.save
        format.html { redirect_to @qualification_t, notice: "Qualification t was successfully created." }
        format.json { render :show, status: :created, location: @qualification_t }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @qualification_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualification_ts/1 or /qualification_ts/1.json
  def update
    respond_to do |format|
      if @qualification_t.update(qualification_t_params)
        format.html { redirect_to @qualification_t, notice: "Qualification t was successfully updated." }
        format.json { render :show, status: :ok, location: @qualification_t }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @qualification_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualification_ts/1 or /qualification_ts/1.json
  def destroy
    @qualification_t.destroy
    respond_to do |format|
      format.html { redirect_to qualification_ts_url, notice: "Qualification Requst was successfully destroyed." }
      format.json { head :no_content }
    end
  end

def correct_user 

@qualification_t = current_user.qualification_ts.find_by(id: params[:id])
redirect_to qualification_ts_path notice:"successfully" if @qualification_t.nil?

end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualification_t
      @qualification_t = QualificationT.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qualification_t_params
      params.require(:qualification_t).permit(:first_name, :last_name, :email, :phone, :skills, :user_id)
    end
end
