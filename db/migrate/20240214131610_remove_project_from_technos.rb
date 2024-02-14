class RemoveProjectFromTechnos < ActiveRecord::Migration[7.1]
  def change
    remove_reference :technos, :project, null: false, foreign_key: true
  end
end
