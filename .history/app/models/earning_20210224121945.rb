class Earning < ApplicationRecord

    def calculate_taxes  
        bracket_one = puts "congrats you are tax free"
        if @earnings.to_i < 9999 
           @earnings.to_i * 0.10
        else puts "Oh no, you have to pay taxes"
        end
    end

    # def first_bracket 
    #     @earnings.to_i * 0.10
    #     byebug
    # end
end
