class AddStepToTask < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :step, foreign_key: true
  end
end
