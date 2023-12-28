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

end
  
