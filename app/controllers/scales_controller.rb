class ScalesController < ApplicationController
    
    def new 
        @scale = Scale.new
    end

    def create
       
        @scale = Scale.new(scale_params)
        @scale.user_id = session[:user_id]
        @scale.politician_id = params[:politician_id]
        if @scale.save
          
          redirect_to politician_path(@scale.politician)
        else
          render 'new'
        end
    end

      private 

      def scale_params
        params.require(:scale).permit(:rating, :politician_id)
      end
end
