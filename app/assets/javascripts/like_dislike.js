//= require jquery.turbolinks
$(document).on('ready page:load', function () {
  $(".voting_wrapper .voting_btn").click(function (e) {
    var clicked_button = $(this).children().attr('class');
    var unique_id = $(this).parent().attr("id");
    var likeable_type = $(this).parent().attr("data-info");
    var like_state,msg;
    if(clicked_button==='down_button')
    {
      msg = 'Please login to UnLike';
      action = 'downvote'
    }
    else if(clicked_button==='up_button')
    {
      msg = 'Please login to Like';    
      action = 'upvote' 
    }

    post_data = {'likeable_id':unique_id, 'likeable_type':likeable_type};
    $.post(action, post_data, function(data) {
      getData = data.toString().split(",")
      $('#'+unique_id+' .up_votes').text(getData[0]);
      $('#'+unique_id+' .down_votes').text(getData[1]);
    }).fail(function(err) {
      if (err.statusText == "Unauthorized"){
        alert(msg)
      }
    });
  });
});
