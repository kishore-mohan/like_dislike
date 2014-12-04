//= require jquery.turbolinks
$(document).on('ready page:load', function () {
	$(".voting_wrapper .voting_btn").click(function (e) {
		var clicked_button = $(this).children().attr('class');
		var unique_id = $(this).parent().attr("id");
		var like_state,msg;
		if(clicked_button==='down_button')
		{
			like_state = 'down';
			msg = 'Please login to UnLike';
		}
		else if(clicked_button==='up_button')
		{
			like_state = 'up';
			msg = 'Please login to Like';			
		}

		post_data = {'id':unique_id, 'vote':like_state};
		$.post('vote_items', post_data, function(data) {
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
