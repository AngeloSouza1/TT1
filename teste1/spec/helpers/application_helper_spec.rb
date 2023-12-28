require 'rails_helper'

  RSpec.describe ApplicationHelper, type: :helper do
    describe '#palindromo' do
      it 'retorna true para a string "radar" que é um palíndromo' do
        expect(helper.palindromo('radar')).to be_truthy
      end
  
      it 'retorna false para a string "python" que não é um palíndromo' do
        expect(helper.palindromo('python')).to be_falsy
      end
  
      it 'ignora espaços e é case-insensitive para a string "Able was I ere I saw Elba" que é um palíndromo' do
        expect(helper.palindromo('Able was I ere I saw Elba')).to be_truthy
      end
  
      it 'retorna true para a string "racecar" que é um palíndromo' do
        expect(helper.palindromo('racecar')).to be_truthy
      end
  
      it 'retorna false para a string "world" que não é um palíndromo' do
        expect(helper.palindromo('world')).to be_falsy
      end
  
      it 'retorna true para a string "A man, a plan, a canal, Panama!" que é um palíndromo' do
        expect(helper.palindromo('A man, a plan, a canal, Panama!')).to be_truthy
      end
    end
  end
  