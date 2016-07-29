class FornecedoresController < ApplicationController
  before_action :set_fornecedore, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /fornecedores
  # GET /fornecedores.json
  def index
    @fornecedores = Fornecedore.all
  end

  # GET /fornecedores/1
  # GET /fornecedores/1.json
  def show
  end

  # GET /fornecedores/new
  def new
    @fornecedore = Fornecedore.new
  end

  # GET /fornecedores/1/edit
  def edit
  end

  # POST /fornecedores
  # POST /fornecedores.json
  def create
    @fornecedore = Fornecedore.new(fornecedore_params)

    respond_to do |format|
      if @fornecedore.save
        format.html { redirect_to @fornecedore, notice: 'Fornecedore was successfully created.' }
        format.json { render :show, status: :created, location: @fornecedore }
      else
        format.html { render :new }
        format.json { render json: @fornecedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fornecedores/1
  # PATCH/PUT /fornecedores/1.json
  def update
    respond_to do |format|
      if @fornecedore.update(fornecedore_params)
        format.html { redirect_to @fornecedore, notice: 'Fornecedore was successfully updated.' }
        format.json { render :show, status: :ok, location: @fornecedore }
      else
        format.html { render :edit }
        format.json { render json: @fornecedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedores/1
  # DELETE /fornecedores/1.json
  def destroy
    @fornecedore.destroy
    respond_to do |format|
      format.html { redirect_to fornecedores_url, notice: 'Fornecedore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedore
      @fornecedore = Fornecedore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fornecedore_params
      params.require(:fornecedore).permit(:fornecedor, :contato)
    end
end
