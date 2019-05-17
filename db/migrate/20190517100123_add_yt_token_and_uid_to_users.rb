class AddYtTokenAndUidToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :yt_token, :string
    add_column :users, :yt_uid, :string
  end
end
