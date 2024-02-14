class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :linkedin_url, :string
    add_column :users, :github_user_url, :string
  end
end
