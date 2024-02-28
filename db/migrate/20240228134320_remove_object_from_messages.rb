class RemoveObjectFromMessages < ActiveRecord::Migration[7.1]
  def change
    remove_column :messages, :object, :string
  end
end
