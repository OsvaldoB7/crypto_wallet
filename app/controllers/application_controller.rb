class ApplicationController < ActionController::Base

    def data_br(data_us)
        date_us.strftime("%d/%m/%y")
    end 


end
