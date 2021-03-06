class Earning < ApplicationRecord  
    
    #amount = @earnings.amount 

    def calc_taxes(amount)
        amount = Earning.all 
        case amount
        when amount.between?(0, 9999)
            return amount.to_i
        when amount.between?(10000, 19999)
            return amount * 0.10
        when amount.between?(19999, 50000)
            return amount * 0.20
        when amount > 50000 
            return amount * 0.30 
        end
    end
end
