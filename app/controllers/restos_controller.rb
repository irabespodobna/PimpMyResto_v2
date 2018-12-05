class RestosController < ApplicationController
  def index
    @the_restos = Resto.all
  end
end
