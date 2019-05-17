class AddInstagramFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ig_token, :string
    add_column :users, :ig_uid, :string
  end
end
