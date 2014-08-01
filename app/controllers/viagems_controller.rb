class ViagemsController < ApplicationController
  before_action :set_viagem, only: [:show, :edit, :update, :destroy]

  # GET /viagems
  # GET /viagems.json
  def index
    if current_user.present?
    @viagems = current_user.viagems
    respond_to do |format|
        format.html
        format.csv 
        format.xls 
      end
    else
      redirect_to '/users/sign_in'
    end
    
  end

  # GET /viagems/1
  # GET /viagems/1.json
  def show
    @total= @viagem.custos.pluck(:valor).sum
  end

  # GET /viagems/new
  def new
    if current_user.present?
    @viagem = Viagem.new
    else
      redirect_to '/users/sign_in'
    end
  end

  # GET /viagems/1/edit
  def edit
  end

  # POST /viagems
  # POST /viagems.json
  def create
    @viagem = Viagem.new(viagem_params)
    @viagem.user = current_user
    respond_to do |format|
      if @viagem.save
        format.html { redirect_to @viagem, notice: 'Viagem was successfully created.' }
        format.json { render :show, status: :created, location: @viagem }
      else
        format.html { render :new }
        format.json { render json: @viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viagems/1
  # PATCH/PUT /viagems/1.json
  def update
    respond_to do |format|
      if @viagem.update(viagem_params)
        format.html { redirect_to @viagem, notice: 'Viagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @viagem }
      else
        format.html { render :edit }
        format.json { render json: @viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viagems/1
  # DELETE /viagems/1.json
  def destroy
    @viagem.destroy
    respond_to do |format|
      format.html { redirect_to viagems_url, notice: 'Viagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def export
      if current_user.present?
   @viagem = Viagem.find(params[:viagem_id])
   @custo = @viagem.custos
   @total= @viagem.custos.pluck(:valor).sum
      respond_to do |format|
        format.html
        format.csv 
        format.xls #{send_data @viagem.despesas.to_csv(col_sep: "\t") }
      end
      end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viagem
      @viagem = Viagem.find(params[:id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def viagem_params
      params.require(:viagem).permit(:name, :date, :user_id)
    end

    
end
