$(document).ready(function() {

	$("#feedback-form").hide();
	$('#feedback-message').css("color", "#999");

	var toggle_submit = function(valid) {
		if (valid) {
			$("#reservation-submit").removeAttr("disabled");
		}
		else {
			$("#reservation-submit").attr("disabled", "disabled");
		}
	};

	var validate_handle = function(submitting, callback) {
		$this = $("#input-handle");
		var input_handle = $this.val();
		
		if (input_handle === "") {
			if (submitting) {
				$this.next().html("Handle is required");
				$this.parent().addClass("error");
				callback(false);
			}
			else {
				callback(false);
			}
		}
		else {
			$.get("/handles", {handle: $this.val()}, function(result) {
				var check_result = function() {
					if (result) {
						$this.next().html("Handle already reserved");
						$this.parent().addClass("error");

						if ($("#handle-icon").hasClass("foundicon-asl") == false)
							$("#handle-icon").removeClass();
							$("#handle-icon").addClass("foundicon-asl");

						callback(false);
					}
					else {
						$this.next().html("");
						$this.parent().removeClass("error");

						if ($("#handle-icon").hasClass("foundicon-asl") == false)
							$("#handle-icon").removeClass();
							$("#handle-icon").addClass("foundicon-asl");

						callback(true);
					}
				};

				window.setTimeout(check_result, 300);
			});
		}
	};

	var validate_password = function(submitting) {
		$this = $("#input-password");
		var input_pword = $this.val();

		if (input_pword.length > 0) {
	    	if (input_pword.length >= 6) {
				$this.next().html("");
				$this.parent().removeClass("error");
				return true;
	    	}
	    	else {
				$this.next().html("Password must be at least 6 chars");
				$this.parent().addClass("error");
				return false;
	    	}
		}
		else if (submitting) {
			$this.next().html("Password is required");
			$this.parent().addClass("error");
			return false;
		}
	};

	var validate_email = function(submitting) {
		$this = $("#input-email");
		var input_email = $this.val();

		if (input_email.length > 0) {
			var pattern = new RegExp("[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}");

	    	if (pattern.test(input_email)) {
				$this.next().html("");
				$this.parent().removeClass("error");
				return true;
	    	}
	    	else {
				$this.next().html("Invalid email");
				$this.parent().addClass("error");
				return false;
	    	}
		}
		else if (submitting) {
			$this.next().html("Email is required");
			$this.parent().addClass("error");
			return false;
		}
	};

	var validated = function() {
		validate_handle(true, function(valid_handle) {
			valid_pword = validate_password(true);
			valid_email = validate_email(true);

			valid = valid_handle && valid_pword && valid_email;
			toggle_submit(valid);
			return valid;
		});
	};

	$("#input-handle").bindWithDelay("keyup", function() {
		$("#handle-icon").removeClass();
		$("#handle-icon").addClass("icon-spinner icon-spin");

		validate_handle(false, function(valid_handle) {
			valid = valid_handle && validate_password() && validate_email();
			toggle_submit(valid);
		});
	}, 300);

	$("#input-password").bindWithDelay("keyup", function() {
		if (validate_password()) {
			validate_handle(false, function(valid_handle){
				valid = valid_handle && validate_email();
				toggle_submit(valid);
			});
		}
		else {
			toggle_submit(false);
		}
	}, 500);

	$("#input-email").keyup(function() {
		var pattern = new RegExp("[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}");
		var input_email = $(this).val();

		if (pattern.test(input_email)) {
			$(this).next().html("");
			$(this).parent().removeClass("error");

			validate_handle(false, function(valid_handle) {
				valid = valid_handle && validate_password();
				toggle_submit(valid);
			});
		}
		else {
			toggle_submit(false);
		}
	});

	$("#reservation-submit").click(function() {
		if (validated()) {
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
		}
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
		var email = $("#feedback-email").val();

		var params = {
			topic: topic,
			message: message,
			email: email
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
