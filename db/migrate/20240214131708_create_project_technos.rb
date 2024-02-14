class CreateProjectTechnos < ActiveRecord::Migration[7.1]
  def change
    create_table :project_technos do |t|
      t.references :project, null: false, foreign_key: true
      t.references :techno, null: false, foreign_key: true

      t.timestamps
    end
  end
end
