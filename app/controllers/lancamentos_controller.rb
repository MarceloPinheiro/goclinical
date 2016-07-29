class LancamentosController < ApplicationController
  before_action :set_lancamento, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  respond_to :html

  def index
    @lancamentos = Lancamento.order('created_at desc').all
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'Lancamentos',
               layout: 'layouts/application.pdf.erb',
               :footer => {:right => '[page] de [topage]'},
               show_as_html: params[:debug].present?
      end
    end
  end

  def show
    respond_with(@lancamento)
  end

  def new
    @lancamento = Lancamento.new
    respond_with(@lancamento)
  end

  def edit
  end

  def create
    @lancamento = Lancamento.new(lancamento_params)
    @lancamento.save
    respond_with(@lancamento)
  end

  def update
    @lancamento.update(lancamento_params)
    respond_with(@lancamento)
  end

  def destroy
    @lancamento.destroy
    respond_with(@lancamento)
  end

  private
    def set_lancamento
      @lancamento = Lancamento.find(params[:id])
    end

    def lancamento_params
      params.require(:lancamento).permit(:obra, :fornecedor, :nota, :valor, :status)
    end
end
