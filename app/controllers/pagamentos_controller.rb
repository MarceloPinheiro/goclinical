class PagamentosController < ApplicationController
  before_action :set_pagamento, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html

  def index
    @lancamento = params[:lancamento]
    @pagamentos = Pagamento.where(lancamento:@lancamento)
    respond_with(@pagamentos)
  end

  def show
    respond_with(@pagamento)
  end

  def new
    if(params[:pagamento] != nil)
      @i = 0
      @parametros = params[:pagamento];
      @valor = BigDecimal.new(@parametros['total']) / @parametros['parcelas'].to_i
      @vencimento = Date.new(@parametros['datav(1i)'].to_i,@parametros['datav(2i)'].to_i,@parametros['datav(3i)'].to_i)

      while @i < @parametros['parcelas'].to_i do

        @pagamento = Pagamento.new

        @pagamento.vencimento = @vencimento
        @pagamento.valor = @valor.truncate(2)
        @vencimento = @vencimento + @parametros['prazo'].to_i
        @pagamento.lancamento_id = @parametros['lancamento'].to_i
        @pagamento.save

        @i += 1
      end
      redirect_to pagamentos_path(:lancamento => @pagamento.lancamento_id)

    end

  end

  def edit
  end

  def create
    @pagamento = Pagamento.new(pagamento_params)
    @pagamento.save
    respond_with(@pagamento)
  end

  def update
    @pagamento.update(pagamento_params)
    respond_with(@pagamento)
  end

  def destroy
    @pagamento.destroy
    redirect_to :action => 'index', :lancamento => params[:lancamento]
  end

  private
    def set_pagamento
      @pagamento = Pagamento.find(params[:id])
    end

    def pagamento_params
      params.require(:pagamento).permit(:lancamento_id, :vencimento, :valor)
    end
end
