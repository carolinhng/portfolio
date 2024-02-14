class RemoveDescriptionFromProject < ActiveRecord::Migration[7.1]
  def change
    remove_column :projects, :description, :string
  end
end
