class Earning < ApplicationRecord

    def calculate_taxes 
         
          @earnings.each do |e|
            e.amount
            if e.amount < 9999
            puts "Congrats, you dont have any taxes to pay" 
            elsif e.amount > 9999 || e.amount < 19999
               return "#{e.amount}" * 0.10 
            elsif e.amount > 19999 || e.amount < 50000
               return "#{e.amount}" * 0.20
            elsif e.amount > 50000 
               return  "#{e.amount}" * 0.30 
            #    byebug        
            end      
                  
          end
    end
end
