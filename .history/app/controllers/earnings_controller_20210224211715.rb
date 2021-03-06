class EarningsController < ApplicationController

    def index
        @earnings = Earning.all       
    end

    def new 
        @earnings = Earning.new
        @last = Earning.last 
    end    

    def create 
        @earning = Earning.create(earning_params) 
        if @earning.save 
           redirect_to earnings_path 
        end
    end
    
    
    
    # def edit 
    #     @earnings = Earning.find_by[:id]
    # end

    # def update 
    #     @earnings = Earning.find_by[:id]
    # end
private 

def earning_params
    params.require(:earning).permit(:amount, :tax)
end

end
