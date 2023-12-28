class FatorialController < ApplicationController
    include ApplicationHelper 
    def index
      @fat1 = calcular_fatorial(-5)
      @fat2 = calcular_fatorial(0)
      @fat3 = calcular_fatorial(5)
      @entrada_fatorial = params[:entrada_fatorial].to_i
      @resultado_fatorial = calcular_fatorial(@entrada_fatorial) if @entrada_fatorial.present?
  
    end
end
