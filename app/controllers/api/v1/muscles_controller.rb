class Api::V1::MusclesController < ApplicationController
    def index
        muscles = Muscle.all 
        render json: muscles
    end


    private

    def muscle_params
        params.require(:muscle).permit(:name)
    end
end