class Earning < ApplicationRecord  


    def calculate_taxes 
        @earnings = Earning.all  
        @tax = []  
          @earnings.map do |e|
             e.amount                                           
            case amount 
                when e.amount < 9999
            @tax = 0            
                when e.amount.between?(10000, 19999)                    
                return @tax = e.amount * 0.10           
                when e.amount.between?(19999, 50000)                 
                 @tax = e.amount * 0.20 
                when e.amount > 50000  
                 @tax = e.amount * 0.30                    
            end                              
          end
          return @tax   
        end  

    # def calc_taxes(amount)
    #     case amount
    #     when amount.between?(0, 9999)
    #         tax = 0
    #         return amount
    #     when amount.between?(10000, 19999)
    #         tax = amount * 0.10 
    #         return tax
    #     when amount.between?(19999, 50000)
    #         tax = amount * 0.20
    #         return tax
    #     when amount > 50000 
    #         tax = amount * 0.30
    #         return tax 
    #     end
    # end
end
