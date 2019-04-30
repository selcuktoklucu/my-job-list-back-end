class AddUserToSteps < ActiveRecord::Migration[5.2]
  def change
    add_reference :steps, :user, foreign_key: true
  end
end
