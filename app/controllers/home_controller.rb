class HomeController < ApplicationController
  def index
  	q  = {network_in: current_user.my_networks,likes_lteq:current_user.yt_likes_count, views_lteq:current_user.yt_views_count}
  	@q = HiveCampaign.ransack(q)
	@campaigns = @q.result(distinct: true)
  end
end
