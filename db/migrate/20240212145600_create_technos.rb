class CreateTechnos < ActiveRecord::Migration[7.1]
  def change
    create_table :technos do |t|
      t.string :techno
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
