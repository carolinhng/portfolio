class RemoveUserFromProjects < ActiveRecord::Migration[7.1]
  def change
    remove_reference :projects, :user, null: false, foreign_key: true
  end
end
