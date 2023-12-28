
require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#valida_cpf' do
    it 'retorna true para o CPF válido "123.456.789-09"' do
      expect(helper.valida_cpf('123.456.789-09')).to be_truthy
    end

    it 'retorna false para o CPF inválido "123.45.6789-09"' do
      expect(helper.valida_cpf('123.45.6789-09')).to be_falsy
    end

    it 'retorna false para o CPF inválido "123.456.789-0A"' do
      expect(helper.valida_cpf('123.456.789-0A')).to be_falsy
    end

  end
end


