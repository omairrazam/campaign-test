class AddYtViewcountLikecountSubcount < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :yt_views_count, :integer
    add_column :users, :yt_likes_count, :integer
    add_column :users, :yt_subscribers_count, :integer

  end
end
