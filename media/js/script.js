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
				$("#handle-error").html("No handle entered");
				handle_valid = false;
			}
			else if (input_handle === result) {
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
		var email_regex = /.+@.+\..+/;
		var input_email = $("#input-email").val();
		if (email_regex.test(input_email)) {
			$("#email-error").empty();
			email_valid = true;
		}
		else {
			$("#email-error").html("Invalid Email");
			email_valid = false;
		}
		check_submit();
	});

});
