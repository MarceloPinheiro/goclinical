class MenusubsController < ApplicationController
  before_action :set_menusub, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  respond_to :html

  def index
    @menusubs = Menusub.all
    respond_with(@menusubs)
  end

  def show
    respond_with(@menusub)
  end

  def new
    @menusub = Menusub.new
    respond_with(@menusub)
  end

  def edit
  end

  def create
    @menusub = Menusub.new(menusub_params)
    @menusub.save
    respond_with(@menusub)
  end

  def update
    @menusub.update(menusub_params)
    respond_with(@menusub)
  end

  def destroy
    @menusub.destroy
    respond_with(@menusub)
  end

  private
    def set_menusub
      @menusub = Menusub.find(params[:id])
    end

    def menusub_params
      params.require(:menusub).permit(:menu_id, :descricao, :link, :modulo)
    end
end
