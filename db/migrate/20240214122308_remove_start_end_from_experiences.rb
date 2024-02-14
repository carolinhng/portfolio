class RemoveStartEndFromExperiences < ActiveRecord::Migration[7.1]
  def change
    remove_column :experiences, :start_end, :date
  end
end
