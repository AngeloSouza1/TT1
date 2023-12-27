module ApplicationHelper

    def palindromo(s)
      s = s.downcase.gsub(/[^a-z0-9]/, '')
      s == s.reverse
    end

end
  
