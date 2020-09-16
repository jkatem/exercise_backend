class CreateMuscles < ActiveRecord::Migration[6.0]
  def change
    create_table :muscles do |t|
      t.string :legs
      t.string :arms_and_abs
      t.string :fullbody

      t.timestamps
    end
  end
end
