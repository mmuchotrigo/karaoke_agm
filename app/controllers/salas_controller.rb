class SalasController < ApplicationController
  before_action :set_sala, only: [:show, :edit, :update, :destroy]
  before_action :set_local

  respond_to :html
  
  # GET /salas
  # GET /salas.json
  def index
    #@salas = Sala.all
    @salas = @local.salas
    respond_with(@local, @salas)
  end

  # GET /salas/1
  # GET /salas/1.json
  def show
    respond_with(@local, @sala)
  end

  # GET /salas/new
  def new
    #@sala = Sala.new
    @sala = @local.salas.new
    respond_with(@local, @sala)
  end

  # GET /salas/1/edit
  def edit
  end

  # POST /salas
  # POST /salas.json
  def create
    @sala = @local.salas.new(sala_params)
    @sala.save
    respond_with(@local, @sala)
  end

  # PATCH/PUT /salas/1
  # PATCH/PUT /salas/1.json
  def update
   @sala.update(sala_params)
   respond_with(@local)
  end

  # DELETE /salas/1
  # DELETE /salas/1.json
  def destroy
    @sala.destroy
    respond_with(@local)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sala
      @sala = Sala.find(params[:id])
    end
    def set_local
      @local = Local.find(params[:local_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sala_params
      params.require(:sala).permit(:name, :capacity, :about, :local_id)
    end
end
