class HiveCampaignController < ApplicationController
  def index
  	@campaigns = HiveCampaign.all
  end
end
