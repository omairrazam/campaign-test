class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  	now = Time.now.utc.to_date
  	age = now.year - current_user.dob.year

  	q  = {
  		network_in: current_user.my_networks,
  		likes_lteq: current_user.yt_likes_count.to_i, 
  		views_lteq: current_user.yt_views_count.to_i,
  		from_age_lteq: age,
  		to_age_gteq: age,
  		country_eq: current_user.country
  	}

  	@q = HiveCampaign.ransack(q)
	@campaigns = @q.result(distinct: true)
  end
end
