class AcessosController < ApplicationController
  before_action :set_acesso, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  respond_to :html

  def index
    @acessos = Acesso.all
    respond_with(@acessos)
  end

  def show
    respond_with(@acesso)
  end

  def new
    @acesso = Acesso.new
    respond_with(@acesso)
  end

  def edit
  end

  def create
    @acesso = Acesso.new(acesso_params)
    @acesso.save
    respond_with(@acesso)
  end

  def update
    @acesso.update(acesso_params)
    respond_with(@acesso)
  end

  def destroy
    @acesso.destroy
    respond_with(@acesso)
  end

  private
    def set_acesso
      @acesso = Acesso.find(params[:id])
    end

    def acesso_params
      params.require(:acesso).permit(:user_id, :menusub_id, :acao)
    end
end
