class TrapplesController < ApplicationController
 before_action :set_trapple, only: %i[ show destroy ]
  before_action :authenticate_user!, except: [:index, :show ,:destroy]
  before_action :correct_user, only: [:edit ]
  # GET /trapples or /trapples.json
  def index
    @trapples = Trapple.all
  end

  def show

  end

  #  # GET /qualification_ts/new
  def new
    @trapple = current_user.trapples.build
  end

  # GET /qualification_ts/1/edit
  def edit
  end

  # POST /qualification_ts or /qualification_ts.json
  def create
    @trapple = current_user.trapples.build(trapple_params)

    respond_to do |format|
      if @trapple.save
        format.html { redirect_to @trapple, notice: "trouble was successfully created." }
        format.json { render :show, status: :created, location: @trapple}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trapple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trapples/1 or /trapples/1.json
  def update
    respond_to do |format|
      if @trapple.update(trapple_params)
        format.html { redirect_to @trapple, notice: "Trapple was successfully updated." }
        format.json { render :show, status: :ok, location: @trapple }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trapple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trapples/1 or /trapples/1.json
  def destroy
    @trapple.destroy
    respond_to do |format|
      format.html { redirect_to trapples_url, notice: "Trapple was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user 

@trapple = current_user.trapples.find_by(id: params[:id])
redirect_to trapples_path, notice:"successfully" if @trapples.nil?

end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trapple
      @trapple = Trapple.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trapple_params
      params.require(:trapple).permit(:first_name, :last_name, :email, :phone, :trapple ,:user_id)
    end
end
