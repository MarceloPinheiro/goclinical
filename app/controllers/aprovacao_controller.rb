class AprovacaoController < ApplicationController
  respond_to :html
  load_and_authorize_resource

  def index
    @lanc = params[:lancamento]
    if(@lanc != nil)
      Lancamento.update(@lanc,status:1)
    end
    @lancamentos = Lancamento.where(status:0).order(:created_at)
    @vencimento = '1900-01-01'.to_date
    respond_with(@lancamentos)
  end


  def aprovacao
    @lanc = params[:lancamento]
    @lancamento = Lancamento.find(@lanc)
    @produtos = Lancamentoproduto.where(lancamento:@lanc)
    @pagamentos = Pagamento.where(lancamento:@lanc)
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'Lancamento',
               layout: 'layouts/application.pdf.erb',
               :footer => {:right => '[page] de [topage]'},
               show_as_html: params[:debug].present?
      end
    end
  end


end
