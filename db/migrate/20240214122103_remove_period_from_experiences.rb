class RemovePeriodFromExperiences < ActiveRecord::Migration[7.1]
  def change
    remove_column :experiences, :period, :string
  end
end
