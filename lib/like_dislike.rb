require "like_dislike/version"
require "like_dislike/helper"
require "acts_as_votable"

module LikeDislike
	module Rails
		if ::Rails.version < "3.1"
			require "like_dislike/railtie"
		else
			require "like_dislike/engine"
		end
	end
end

ActionView::Base.send :include, LikeDislike::Helper
