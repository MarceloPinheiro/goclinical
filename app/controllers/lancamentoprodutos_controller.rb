class LancamentoprodutosController < ApplicationController
  before_action :set_lancamentoproduto, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource
  respond_to :html

  def index
    @lancamento = params[:lancamento]

    if(@lancamento == nil)
      redirect_to lancamentos_path
    else

    @lancamentoprodutos = Lancamentoproduto.where(lancamento:@lancamento)
    respond_with(@lancamentoprodutos)
    end
  end

  def show
    respond_with(@lancamentoproduto)
  end

  def new
    @lancamentoproduto = Lancamentoproduto.new
    respond_with(@lancamentoproduto)
  end

  def edit
  end

  def create
    @lancamentoproduto = Lancamentoproduto.new(lancamentoproduto_params)
    @lancamentoproduto.save
    respond_with(@lancamentoproduto)
  end

  def update
    @lancamentoproduto.update(lancamentoproduto_params)
    respond_with(@lancamentoproduto)
  end

  def destroy
    @lancamentoproduto.destroy
    redirect_to :action => 'index', :lancamento => params[:lancamento]
  end

  private
    def set_lancamentoproduto
      @lancamentoproduto = Lancamentoproduto.find(params[:id])
    end

    def lancamentoproduto_params
      params.require(:lancamentoproduto).permit(:lancamento, :produto, :quantidade, :valor)
    end
end
