class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :name
      t.string :color
      t.string :url

      t.timestamps
    end
  end
end
