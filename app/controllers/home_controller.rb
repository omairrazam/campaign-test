class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  	q  = {network_in: current_user.my_networks,likes_lteq:current_user.yt_likes_count.to_i, views_lteq:current_user.yt_views_count.to_i}
  	@q = HiveCampaign.ransack(q)
	@campaigns = @q.result(distinct: true)
  end
end
