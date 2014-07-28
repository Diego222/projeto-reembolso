class CustosController < ApplicationController

  #before_action :set_viagem, only: [:show, :edit, :update,:destroy]
  before_action :set_custo, only: [:show, :edit, :update, :destroy]
  

  # GET /custos
  # GET /custos.json
  def index
    @viagem = Viagem.find(params[:viagem_id])
    if current_user.present?
      
      @custos = @viagem.custos
      else
      redirect_to '/users/sign_in'
    end
  end

  # GET /custos/1
  # GET /custos/1.json
  def show
  end

  # GET /custos/new
  def new
    @viagem = Viagem.find(params[:viagem_id])
    if current_user.present?
    @custo = @viagem.custos.new
    else
      redirect_to '/users/sign_in'
    end
  end

  # GET /custos/1/edit
  def edit
  end

  # POST /custos
  # POST /custos.json
  def create
    @viagem = Viagem.find(params[:viagem_id])
    @custo = Custo.new(custo_params)

    respond_to do |format|
      if @custo.save
        format.html { redirect_to viagem_custo_path(@viagem,@custo), notice: 'Custo was successfully created.' }
        format.json { render :show, status: :created, location: @custo }
      else
        format.html { render :new }
        format.json { render json: @custo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custos/1
  # PATCH/PUT /custos/1.json
  def update
    respond_to do |format|
      if @custo.update(custo_params)
        format.html { redirect_to @custo, notice: 'Custo was successfully updated.' }
        format.json { render :show, status: :ok, location: @custo }
      else
        format.html { render :edit }
        format.json { render json: @custo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custos/1
  # DELETE /custos/1.json
  def destroy
    @custo.destroy
    respond_to do |format|
      format.html { redirect_to viagems_path, notice: 'Custo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custo
      #@viagem = Viagem.find(params[:viagem_id])
      @custo = Custo.find(params[:id])
    end

    

    # Never trust parameters from the scary internet, only allow the white list through.
    def custo_params
      params.require(:custo).permit(:tipo, :data, :valor, :viagem_id, :tipo_id, :cover)
    end
end
