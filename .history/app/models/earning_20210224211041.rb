class Earning < ApplicationRecord   

    def calc_taxes(amount)
        case amount
        when amount < 10000
            return amount
        when amount.to_i.between?(10000, 19999)
            return amount * 0.10
        when amount.between?(19999, 50000)
            return amount * 0.20
        when amount > 50000 
            return amount * 0.30 
        end
    end
end
