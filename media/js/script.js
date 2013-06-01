$(document).ready(function() {

	var handle_valid = false;
	var email_valid = false;

	var check_submit = function() {
		if (handle_valid && email_valid) {
			$("#reservation-submit").removeAttr("disabled");
		}
		else {
			$("#reservation-submit").attr("disabled", "disabled");
		}
	};

	$("#input-handle").keyup(function() {
		var input_handle = $(this).val();
		$.get("/handles", {handle: $(this).val()}, function(result) {
			if (input_handle === "") {
				$("#input-handle").css("No handle entered");
				handle_valid = false;
			}
			else if (result) {
				$("#handle-error").html("Handle already reserved");
				handle_valid = false;
			}
			else {
				$("#handle-error").empty();
				handle_valid = true;
			}
			check_submit();
		});
	});

	$("#input-email").keyup(function() {
		var input_email = $("#input-email").val();
		if (input_email.length > 0) {
			$("#email-error").empty();
			email_valid = true;
		}
		else if (email_valid == true) {
			$("#email-error").html("Email is required");
			email_valid = false;
		}
		check_submit();
	});

	$("#reservation-submit").click(function(elem) {
		var input_tag = $("#input-tag").val();
		var input_handle = $("#input-handle").val();
		var input_email = $("#input-email").val();
		var params = {
			tag: input_tag,
			handle: input_handle,
			email: input_email
		};

		$.post("/reserve", params, function(result) {
			$(".card").addClass("flipped");
			if(input_tag.length == 0) {
				$("#success-tag").hide();
			}
			else {
				$("#success-tag").html(input_tag);
			}
			$("#success-handle").html(input_handle);
		});
	});

});
