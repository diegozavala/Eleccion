class ResultadosController < ApplicationController
  before_action :set_resultado, only: [:show, :edit, :update, :destroy]

  # GET /resultados
  # GET /resultados.json
  def index
    @resultados = Resultado.all
  end

  # GET /resultados/1
  # GET /resultados/1.json
  def show
  end

  # GET /resultados/new
  def new
    @resultado = Resultado.new
  end

  # GET /resultados/1/edit
  def edit
  end

  # POST /resultados
  # POST /resultados.json
  def create
    i=2
    Candidato.all.each do |c|
      mesa = Mesa.find_by(circunscripcion_id: params[0], nombre: params[1])
       @resultado = Resultado.create(mesa: mesa, candidato: c, votos: params[i])
       i=i+1
    end
   format.html { redirect_to resultado_path, notice: 'Resultado was successfully created.' }

    #respond_to do |format|
     # if @resultado.save
        
      #  format.json { render action: 'show', status: :created, location: @resultado }
      #else
       # format.html { render action: 'new' }
      #  format.json { render json: @resultado.errors, status: :unprocessable_entity }
      #end
      #end
  end

  # PATCH/PUT /resultados/1
  # PATCH/PUT /resultados/1.json
  def update
    respond_to do |format|
      if @resultado.update(resultado_params)
        format.html { redirect_to @resultado, notice: 'Resultado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resultado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resultados/1
  # DELETE /resultados/1.json
  def destroy
    @resultado.destroy
    respond_to do |format|
      format.html { redirect_to resultados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resultado
      @resultado = Resultado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resultado_params
      params.require(:resultado).permit(:mesa_id, :candidato_id, :votos)
    end
end
