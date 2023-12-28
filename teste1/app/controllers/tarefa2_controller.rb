class Tarefa2Controller < ApplicationController
    include ApplicationHelper 
    def index
      @result1 = valida_cpf('461.636.517-23')
      @result2 = valida_cpf('46163651723')
      @result3 = valida_cpf('0000000')
      @entrada = params[:entrada_cpf]
      @resultado = valida_cpf(@entrada) if @entrada.present?
    end
end
