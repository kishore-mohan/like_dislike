$(document).ready(function() {
	$(".voting_wrapper .voting_btn").click(function (e) {
		var clicked_button = $(this).children().attr('class');
		var unique_id = $(this).parent().attr("id");
		if(clicked_button==='down_button')
		{
			post_data = {'id':unique_id, 'vote':'down'};
			$.post('vote_items', post_data, function(data) {
				getData = data.toString().split(",")
				$('#'+unique_id+' .up_votes').text(getData[0]);
				$('#'+unique_id+' .down_votes').text(getData[1]);
			}).fail(function(err) {
				if (err.statusText == "Unauthorized"){
					alert("Please login to UnLike")
				}
			});
		}
		else if(clicked_button==='up_button')
		{
			post_data = {'id':unique_id, 'vote':'up'};
			$.post('vote_items', post_data, function(data) {
				getData = data.toString().split(",")
				$('#'+unique_id+' .up_votes').text(getData[0]);
				$('#'+unique_id+' .down_votes').text(getData[1]);
			}).fail(function(err) {
				if (err.statusText == "Unauthorized"){
					alert("Please login to Like")
				}
			});
		}
	});
});
