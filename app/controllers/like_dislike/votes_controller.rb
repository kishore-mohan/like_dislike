module LikeDislike
  class VotesController < ActionController::Base
    before_action :find_likeable
    before_action :authenticate_user!
    respond_to :js

    def create
      @likeable.liked_by current_user
      render json: render_votes
    end

    def destroy
      @likeable.disliked_by current_user
      render json: render_votes
    end

    private

    def render_votes
      [@likeable.cached_votes_up, @likeable.cached_votes_down]
    end

    def find_likeable
      @likeable_type = params[:likeable_type].classify
      @likeable = @likeable_type.constantize.find(params[:likeable_id])
    end

  end
end