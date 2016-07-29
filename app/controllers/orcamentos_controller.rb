class OrcamentosController < ApplicationController
  before_action :set_orcamento, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  respond_to :html

  def index
    @orcamentos = Orcamento.order(' ano desc,mes desc').all
    respond_with(@orcamentos)
  end

  def show
    respond_with(@orcamento)
  end

  def new
    @orcamento = Orcamento.new
    respond_with(@orcamento)
  end

  def edit
  end

  def create
    @orcamento = Orcamento.new(orcamento_params)
    @orcamento.save
    respond_with(@orcamento)
  end

  def update
    @orcamento.update(orcamento_params)
    respond_with(@orcamento)
  end

  def destroy
    @orcamento.destroy
    respond_with(@orcamento)
  end

  private
    def set_orcamento
      @orcamento = Orcamento.find(params[:id])
    end

    def orcamento_params
      params.require(:orcamento).permit(:obra, :valor, :mes, :ano)
    end
end
