$(document).ready(function() {

	var handle_valid = false;
	var email_valid = false;

	$("#feedback-form").hide();
	$('#feedback-message').css("color", "#999");

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

	$("#reservation-submit").click(function() {
		var input_tag = $("#input-tag").val();
		var input_handle = $("#input-handle").val();
		var input_email = $("#input-email").val();
		var params = {
			tag: input_tag,
			handle: input_handle,
			email: input_email
		};

		$.post("/reserve", params, function(result) {
			$("#signup-wrapper").addClass("flipped");

			if(input_tag.length == 0) {
				$("#success-tag").hide();
			}
			else {
				$("#success-tag").html(input_tag);
			}
			$("#success-handle").html(input_handle);
		});
	});

	$("#feedback-message").keyup(function () {
		if($("#feedback-message").val() != "") {
			$("#feedback-submit").removeAttr("disabled");
		}
		else {
			$("#feedback-submit").attr("disabled", "disabled");
		}
	});

	$("#feedback-topic").change(function() {
		if($("#feedback-topic").val() !== "") {
			$("#feedback-form").show();
		}
		else {
			$("#feedback-form").hide();
		}

	});

	$("#feedback-submit").click(function() {
		var topic = $("#feedback-topic").val();
		var message = $("#feedback-message").val();

		var params = {
			topic: topic,
			message: message
		};

		$.post("/feedback", params, function() {
			$("#feedback-card").addClass("flipped");
		});
	});
	
	var feedback_message = $('#feedback-message').val();

	$('#feedback-message').focus(function() {
        if ($(this).val() == feedback_message) {
    		$(this).css("color", "black");
            $(this).val("");
        }
	});

	$('#feedback-message').blur(function() {
        if ($(this).val() == "") {
        	$(this).css("color", "#999");
            $(this).val(feedback_message);
        }
	});

});
