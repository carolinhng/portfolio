class CreateTechnos < ActiveRecord::Migration[7.1]
  def change
    create_table :technos do |t|
      t.string :techno
      t.timestamps
    end
  end
end
