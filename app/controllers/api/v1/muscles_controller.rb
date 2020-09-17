class Api::V1::MusclesController < ApplicationController
    def index
        muscles = Muscle.all 
        render json: muscles
    end

    def create
        muscle = Muscle.new(muscle_params)
        if muscle.save
            render json: MuscleSerializer.new(muscle), status: :accepted
        else
            render json: {errors: muscle.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy

    end

    private

    def muscle_params
        params.require(:muscle).permit(:name)
    end
end