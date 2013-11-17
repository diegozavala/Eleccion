class CircunscripcionsController < ApplicationController
  before_action :set_circunscripcion, only: [:show, :edit, :update, :destroy]

  # GET /circunscripcions
  # GET /circunscripcions.json
  def index
    @circunscripcions = Circunscripcion.all
  end

  # GET /circunscripcions/1
  # GET /circunscripcions/1.json
  def show
  end

  # GET /circunscripcions/new
  def new
    @circunscripcion = Circunscripcion.new
  end

  # GET /circunscripcions/1/edit
  def edit
  end

  # POST /circunscripcions
  # POST /circunscripcions.json
  def create
    @circunscripcion = Circunscripcion.new(circunscripcion_params)

    respond_to do |format|
      if @circunscripcion.save
        format.html { redirect_to @circunscripcion, notice: 'Circunscripcion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @circunscripcion }
      else
        format.html { render action: 'new' }
        format.json { render json: @circunscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circunscripcions/1
  # PATCH/PUT /circunscripcions/1.json
  def update
    respond_to do |format|
      if @circunscripcion.update(circunscripcion_params)
        format.html { redirect_to @circunscripcion, notice: 'Circunscripcion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @circunscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circunscripcions/1
  # DELETE /circunscripcions/1.json
  def destroy
    @circunscripcion.destroy
    respond_to do |format|
      format.html { redirect_to circunscripcions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circunscripcion
      @circunscripcion = Circunscripcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circunscripcion_params
      params.require(:circunscripcion).permit(:nombre, :comuna_id)
    end
end
