class RemoveUserFromExperiences < ActiveRecord::Migration[7.1]
  def change
    remove_reference :experiences, :user, null: false, foreign_key: true
  end
end
