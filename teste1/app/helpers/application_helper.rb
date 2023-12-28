module ApplicationHelper

    def palindromo(s)
      s = s.downcase.gsub(/[^a-z0-9]/, '')
      s == s.reverse
    end

    
    def valida_cpf(cpf)
      cpf_regex = /^\d{3}\.\d{3}\.\d{3}-\d{2}$/
      if cpf.match(cpf_regex)
        return true
      else
        return false
      end
    end
    
    def calcular_fatorial(n)
      return nil unless /\A\d+\z/.match?(n.to_s)  
      n = n.to_i
      return nil if n < 0
      return 1 if n == 0
    
      resultado = 1
      (1..n).each do |i|
        resultado *= i
      end
      resultado
    end
      
     

end
  
