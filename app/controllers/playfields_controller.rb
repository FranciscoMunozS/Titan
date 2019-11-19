class PlayfieldsController < ApplicationController
  before_action :set_playfield, only: [:show, :edit, :update, :destroy]

  # GET /playfields
  # GET /playfields.json
  def index
    @playfields = Playfield.all
  end

  # GET /playfields/1
  # GET /playfields/1.json
  def show
  end

  # GET /playfields/new
  def new
    @playfield = Playfield.new
  end

  # GET /playfields/1/edit
  def edit
  end

  # POST /playfields
  # POST /playfields.json
  def create
    @playfield = Playfield.new(playfield_params)

    respond_to do |format|
      if @playfield.save
        format.html { redirect_to @playfield, notice: 'Playfield was successfully created.' }
        format.json { render :show, status: :created, location: @playfield }
      else
        format.html { render :new }
        format.json { render json: @playfield.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playfields/1
  # PATCH/PUT /playfields/1.json
  def update
    respond_to do |format|
      if @playfield.update(playfield_params)
        format.html { redirect_to @playfield, notice: 'Playfield was successfully updated.' }
        format.json { render :show, status: :ok, location: @playfield }
      else
        format.html { render :edit }
        format.json { render json: @playfield.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playfields/1
  # DELETE /playfields/1.json
  def destroy
    @playfield.destroy
    respond_to do |format|
      format.html { redirect_to playfields_url, notice: 'Playfield was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playfield
      @playfield = Playfield.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playfield_params
      params.require(:playfield).permit(:name, :dimensions, :type, :description)
    end
end
