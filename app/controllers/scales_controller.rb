class ScalesController < ApplicationController
    
    def new 
        @scale = Scale.new
    end

    def create
        # byebug
        @scale = Scale.new(scale_params)
        
        if @scale.save
          redirect_to politician_path(@politician)
        else
          render 'new'
        end
      end

      private 

      def scale_params
        params.require(:scale).permit(:rating)
      end
end
