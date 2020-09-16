class MuscleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :legs, :arms_and_abs, :fullbody
end
