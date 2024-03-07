class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :url_link
      t.string :github_link
      t.string :image
      t.timestamps
    end
  end
end
