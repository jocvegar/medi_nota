var hideMessageAfterTime = function () {
	setTimeout(function() {
	    $('#flash-wrapper').fadeOut('slow', function() {
	    	$(this).remove();
	    })
	}, 4500)
};

document.addEventListener("turbolinks:load", function () {
	// Load function on initial load
	hideMessageAfterTime();

	$('body').on("reLoadJS", function() {
		// Load function after Partial is Rendered
		hideMessageAfterTime();
	});
});
