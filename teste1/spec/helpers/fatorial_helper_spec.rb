require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#calcular_fatorial' do
    it 'retorna nil para entrada negativa' do
      expect(helper.calcular_fatorial(-5)).to be_nil
    end

    it 'retorna 1 para entrada 0' do
      expect(helper.calcular_fatorial(0)).to eq(1)
    end

    it 'calcula o fatorial para entrada positiva' do
      expect(helper.calcular_fatorial(5)).to eq(120)
    end

    it 'trata entrada não numérica' do
      expect(helper.calcular_fatorial('abc')).to be_nil
    end

    it 'trata entrada grande' do
      expect(helper.calcular_fatorial(20)).to eq(2432902008176640000)
    end
  end
end
