class UpdateForeignKey < ActiveRecord::Migration[5.2]
  def change
        # remove the old foreign_key
    remove_foreign_key :tasks, :users

    # add the new foreign_key
    add_foreign_key :tasks, :users, on_delete: :cascade
  end
end
