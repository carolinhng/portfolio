class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :url_link
      t.string :github_link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
