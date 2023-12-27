class ExemploController < ApplicationController
    include ApplicationHelper 
    def index
      @resultado1 = palindromo('arara')
      @resultado2 = palindromo('ruby')
      @resultado3 = palindromo('Socorram-me subi no ônibus em Marrocos')
      @entrada = params[:entrada]
      @resultado = palindromo(@entrada) if @entrada.present?
  
    end
  end