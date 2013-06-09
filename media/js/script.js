$(document).ready(function() {

	$("#feedback-form").hide();
	$('#feedback-message').css("color", "#999");

	var validate_handle = function(submitting, callback) {
		submitting = submitting || false;
		callback = callback || function(){};

		$this = $("#input-handle");
		var input_handle = $this.val();

		if ($this.next().hasClass("success")) {
			$this.next().removeClass("success");
			$this.next().html("");
		}
		
		if (input_handle === "") {
			if (submitting) {
				$this.next().html("<i class='icon-exclamation-sign'></i> Handle is required");
				$this.parent().addClass("error");
				callback(false);
			}
			else {
				if ($this.next().html() !== "Handle is required") {
					$this.next().html("");
					$this.parent().removeClass("error");
				}
				callback(false);
			}
		}
		else {
			$.get("/handles", {handle: $this.val()}, function(result) {
				var check_result = function() {
					if (result) {
						$this.next().html("<i class='icon-exclamation-sign'></i> Handle already reserved");
						$this.parent().addClass("error");

						if ($("#handle-icon").hasClass("foundicon-asl") == false)
							$("#handle-icon").removeClass();
							$("#handle-icon").addClass("foundicon-asl icon-large");

						callback(false);
					}
					else {
						$this.parent().removeClass("error");

						if (submitting) {
							$this.next().removeClass();
							$this.next().html("");
						}
						else {
							$this.next().addClass("success");
							$this.next().html("<i class='icon-thumbs-up'></i> " + $this.val() + " is available!");
						}

						if ($("#handle-icon").hasClass("foundicon-asl") == false)
							$("#handle-icon").removeClass();
							$("#handle-icon").addClass("foundicon-asl icon-large");

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
				$this.next().html("<i class='icon-exclamation-sign'></i> Password must be at least 6 chars");
				$this.parent().addClass("error");
				return false;
	    	}
		}
		else if (submitting) {
			$this.next().html("<i class='icon-exclamation-sign'></i> Password is required");
			$this.parent().addClass("error");
			return false;
		}
	};

	var validate_email = function(callback) {
		$this = $("#input-email");
		var input_email = $this.val();

		if (input_email.length > 0) {
			var pattern = new RegExp("[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}");

	    	if (pattern.test(input_email)) {
				$.get("/emails", {email: input_email}, function(result) {
					if (result) {
						$this.next().html("<i class='icon-exclamation-sign'></i> This email is already registered");
						$this.parent().addClass("error");
						callback(false);
					}
					else {
						$this.next().html("");
						$this.parent().removeClass("error");
						callback(true);
					}
				});
	    	}
	    	else {
				$this.next().html("<i class='icon-exclamation-sign'></i> Invalid email");
				$this.parent().addClass("error");
				callback(false);
	    	}
		}
		else {
			$this.next().html("<i class='icon-exclamation-sign'></i> Email is required");
			$this.parent().addClass("error");
			callback(false);
		}
	};

	var validated = function(callback) {
		validate_handle(true, function(valid_handle) {
			if ($("#handle-status").hasClass("success")) {
				$("#handle-status").html("");
				$("#handle-status").removeClass();
			}

			validate_email(function(valid_email) {
				valid_pword = validate_password(true);
				valid = valid_handle && valid_pword && valid_email;
				callback(valid);
			});
		});
	};

	$("#input-handle").bindWithDelay("keyup", function() {
		if ($("#input-handle").val() !== "") {
			$("#handle-icon").removeClass();
			$("#handle-icon").addClass("icon-spinner icon-spin icon-large");
		}
		validate_handle();
	}, 600);

	$("#input-password").bindWithDelay("keyup", function() {validate_password(false)}, 600);

	$("#input-email").keyup(function() {
		var pattern = new RegExp("[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}");
		var input_email = $(this).val();

		if (pattern.test(input_email)) {
			$(this).next().html("");
			$(this).parent().removeClass("error");
		}
	});

	$("#reservation-submit").click(function() {
		validated(function(valid) {
			if (valid) {
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
						$("#success-tag").html("VGT");
					}
					else {
						$("#success-tag").html(input_tag);
					}
					$("#success-handle").html(input_handle);
				});
			}
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
