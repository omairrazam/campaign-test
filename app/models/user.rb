class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    ALL_NETWORDS= %w(yt ig)

	def from_omniauth(auth)
		# user = User.find_or_initialize_by(uid: auth['uid'])
		# user.name = auth['info']['name']
		self.yt_token = auth['credentials']['token']
		self.yt_uid = auth['uid']
		self.save!
		self
	end

	def yt_client
		Yt::Account.new access_token: self.yt_token
	end

	def my_networks
		ALL_NETWORDS.select{|n|self.respond_to?("#{n}_uid")&&self.public_send("#{n}_uid").present?}
	end

	def my_youtube_metrics

		view_count=0
		like_count=0
		subscribers_gained=0

		yt_client.videos.each do |video|
			view_count+=video.view_count
			like_count+=video.like_count
			#subscribers_gained+=video.subscribers_gained
		end

		result = {yt_views_count:view_count, yt_likes_count:like_count,yt_subscribers_count:subscribers_gained}

		self.update!(result)
	end

	
end


#account = Yt::Account.new access_token: user.yt_token