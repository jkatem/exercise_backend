class Api::V1::ExercisesController < ApplicationController

    def index
        exercises = Exercise.all 
        render json: ExerciseSerializer.new(exercises)
    end

    def create
        exercise = Exercise.new(exercise_params)
        if exercise.save
            render json: ExerciseSerializer.new(exercise), status: :accepted
        else
            render json: {errors: exercise.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy

    end

    private

    def exercise_params
        params.require(:exercise).permit(:name, :description, :duration, :muscle_id)
    end
end
