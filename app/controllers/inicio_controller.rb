class InicioController < ApplicationController

  def index
    if(params[:inicio] == nil)
      @data = Date.today
      @mes = Date.today.month
      @ano = Date.today.year
    else
      if(params[:inicio].length > 1)
        @ini = params[:inicio]
        @dataR = Date.new(@ini['dataR(1i)'].to_i,@ini['dataR(2i)'].to_i,@ini['dataR(3i)'].to_i)
      else
        @p1 = params[:inicio]
        @ini = @p1["dataR"].split("-")
        @dataR = Date.new(@ini[0].to_i,@ini[1].to_i,@ini[2].to_i)
      end
      @inicio = Inicio.new(@dataR)
      @data = @inicio.dataR
      @mes = @data.month
      @ano = @data.year

    end
    @obras = Obra.where("fim > ?", @data)
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'Orcamentos',
               layout: 'layouts/application.pdf.erb',
               :footer => {:right => '[page] de [topage]'},
               show_as_html: params[:debug].present?
      end
    end
  end

  def detalhes
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'Detalhes',
               layout: 'layouts/application.pdf.erb',
               :footer => {:right => '[page] de [topage]'}
      end
    end
  end

  def inicio_params
    params.require(:inicio).permit(:dataR)
  end
end
