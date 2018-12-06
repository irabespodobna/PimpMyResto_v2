class RestosController < ApplicationController
  def index
    @the_restos = Resto.all
  end

  def create
    Resto.create name: params[:resto_name], address: params[:resto_address]
    # redirect_to "/restos"
  end

  def show
    @resto = Resto.find(params[:id])
    @surveys = @resto.surveys
    @num_votes = @surveys.size

  end
end
