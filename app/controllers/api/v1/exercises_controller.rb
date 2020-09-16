class Api::V1::ExercisesController < ApplicationController

    def index
        exercises = Exercise.all 
        render json: ExerciseSerializer.new(exercises)
    end

    def create

    end

    def destroy

    end

    private

    def exercise_params

    end
end
