class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :duration, :muscle_id, :muscle 
end
