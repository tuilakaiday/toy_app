class MicrosController < ApplicationController
  before_action :set_micro, only: [:show, :edit, :update, :destroy]

  # GET /micros
  # GET /micros.json
  def index
    @micros = Micro.all
  end

  # GET /micros/1
  # GET /micros/1.json
  def show
  end

  # GET /micros/new
  def new
    @micro = Micro.new
  end

  # GET /micros/1/edit
  def edit
  end

  # POST /micros
  # POST /micros.json
  def create
    @micro = Micro.new(micro_params)

    respond_to do |format|
      if @micro.save
        format.html { redirect_to @micro, notice: 'Micro was successfully created.' }
        format.json { render :show, status: :created, location: @micro }
      else
        format.html { render :new }
        format.json { render json: @micro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micros/1
  # PATCH/PUT /micros/1.json
  def update
    respond_to do |format|
      if @micro.update(micro_params)
        format.html { redirect_to @micro, notice: 'Micro was successfully updated.' }
        format.json { render :show, status: :ok, location: @micro }
      else
        format.html { render :edit }
        format.json { render json: @micro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micros/1
  # DELETE /micros/1.json
  def destroy
    @micro.destroy
    respond_to do |format|
      format.html { redirect_to micros_url, notice: 'Micro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micro
      @micro = Micro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micro_params
      params.require(:micro).permit(:content, :user_id)
    end
end
