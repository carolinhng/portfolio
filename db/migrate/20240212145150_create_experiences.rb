class CreateExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :post
      t.string :period
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
