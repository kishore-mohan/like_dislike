module LikeDislike
  module Helper
    def like_unlike_button(votable_object)
      if current_user
        html = []
        html << "<div class='voting_wrapper' id=#{votable_object.id} >
        <div class='voting_wrapper' data-info=#{votable_object.class.to_s} id=#{votable_object.id} >
        <div class='voting_btn'>
        <div class='up_button'></div>
        <span class='up_votes'>#{votable_object.get_upvotes.size}</span>
        </div>
        <div class='voting_btn'>
        <div class='down_button'></div>
        <span class='down_votes'>#{votable_object.get_downvotes.size}</span>
        </div>
        </div>"
        raw html.join("\n")     
      end
    end
  end
end