class CreateExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :post
      t.string :period
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
