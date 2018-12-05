class RestosController < ApplicationController
  def index
    @the_restos = Resto.all
  end

  def create
    Resto.create name: params[:resto_name], address: params[:resto_address]
    # redirect_to "/restos"
  end
end
